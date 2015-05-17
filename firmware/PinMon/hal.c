#include "hal.h"
#include <avr/eeprom.h>
#include <inttypes.h>

uint8_t EEMEM mac=    4;        //device-id     for .eep-file
uint8_t EEMEM mac_crc=4^0b10101010;   	 //device-id crc for .epp-file

enum Status
{
	garbaged_config,				     //device id does not match it's crc
	sending_dev_id_done,
	unknown,
	collision,
	collision2,
	receiveing_first_ok,
	first_portion_sent,
	second_portion_sent
};

volatile uint8_t dev_id;  			//device id
volatile uint8_t status;  			//global status
volatile uint8_t sending_status=unknown;
volatile uint8_t old_pin_status=0xff;	//pin status on previous check
volatile uint8_t sending_buffer;	
volatile uint32_t sending_counter=0b00000000000010000000000000000000;
volatile uint8_t dev_id_shift;
volatile uint32_t sendbuf;
volatile uint8_t ref;


ISR(TIMER2_OVF_vect)
{
	if(sending_counter)
	{
		if(sending_counter & sendbuf)
		{
			max_out_off();
		}		
		else
		{
			max_out_on();
		}
		reset_timer2();
	}
	else
	{
		status=sending_dev_id_done;
		stop_timer2();
	}
	sending_counter>>=1;
}


ISR(TIMER1_OVF_vect)
{
	switch(status)
	{
		case garbaged_config:       //if config isn't valid, blink status & tx every second
		{
			invert_tx();
			invert_status();
			break;
		}
	}
	switch(sending_status)
	{
		case collision:
		{
			invert_status();
			sending_status=collision2;
			break;
		}
		case collision2:
		{
			invert_status();
			sending_status=unknown;
			break;
		}
	}
}

ISR(TIMER0_OVF_vect)
{
	const uint8_t stat=current_status();
	if(stat!=old_pin_status)		   //if status changed since last check
	{
		old_pin_status=current_status();
		send_update(stat);         //initiate sending machine
	}
}

ISR(USART_TX_vect)
{
	switch(sending_status)
	{
		case first_portion_sent:
		{
			sending_status=second_portion_sent;
			UDR0=sending_buffer^dev_id;
			break;
		}
		case second_portion_sent:
		{
			sending_status=unknown;
			output_off();
			break;
		}

	}
}

ISR(USART_RX_vect)
{
	switch(sending_status)
	{
		case sending_dev_id_done:
		{
			if( ref == UDR0 )
			{
				invert_status();	
				sending_status=receiveing_first_ok;
			}
			else
			{
				sending_status=unknown;
				old_pin_status=0;
			}
			break;
		}
		case receiveing_first_ok:
		{
			if(ref == UDR0)
			{
				sending_status=first_portion_sent;
				output_on();
				UDR0=sending_buffer;
			}
			else
			{
				sending_status=unknown;
				old_pin_status=0;
			}
			break;
		}

	}
}




void init_io()
{
	DDRB=0;
	PORTB= (1<<PINB3) | (1<<PINB4) | (1<<PINB5);  //enable input pull-ups

	DDRC = (1<<PINC4) | (1<< PINC5);              //enable max485 contol lines
	PORTC= (1<<PINC0) | (1<<PINC1);               //enable input pull-ups

	DDRD = (1 << PIND1) | (1 << PIND3);           //enabe status led control and tx line
	PORTD= (1 << PIND4) | (1 << PIND5);           //enable input pull-ups		
}
void init_timer()
{
	//timer0 - about 244Hz  - read inputs
	TIMSK0=1<<TOIE0;		
	TCCR0B= (1<<CS02) | (1<<CS00);		
	//timer1 - about 0.95Hz - status led
	TCCR1B= 1<<CS12;
	TIMSK1= 1<<TOIE1;	
	//timer2 - USART bitbang 16e6/38400=8*52	
	TCCR2B= (1<<CS21);
	
}

void init_config()
{
//read device id and it's crc
	dev_id=eeprom_read_byte(&mac);
	const uint8_t cfgctrl=eeprom_read_byte(&mac_crc);

    status_on();
//if id matches crc
	if(dev_id == (cfgctrl ^ 0b10101010))
	{
		
		ref=( ( (1<<(dev_id) ) <<1) -1 );
		dev_id_shift=dev_id<<5;
	}
	else
	{	
		//blinking tx and status leds one-by-one
		tx_mode_regular();		     				
		status=garbaged_config;	
	}
}

void init_usart()   //only enables USART, but rx and tx clock are stopped and MAX485 i/o disabled
{
//speed 38400
	UBRR0H=0;
	UBRR0L=25;
//8bit 1 stopbit no parity
	UCSR0C= (1<<UCSZ01) | (1<<UCSZ00);

}

uint8_t current_status()   //read all input pins. 7th bit is always 1
{
	const uint8_t pinsb=(PINB & ( (1<<PINB3) | (1<<PINB4) | (1<<PINB5) ) )<<1;
	const uint8_t pinsc= PINC & ( (1<<PINC0) | (1<<PINC1)                );
	const uint8_t pinsd=(PIND & ( (1<<PIND4) | (1<<PIND5)              ) )>>1;

	return pinsb | pinsc | pinsd | (1<<7);
}

void send_update(uint8_t stat)
{
	if(sending_status!=unknown)
	{
		return;
	}
	sending_buffer=stat;
	
	usart_disable_tx();
	tx_off();
	const uint32_t tref=ref;
	sendbuf=0b00000000000000000000010000000001 | (tref<<1) | (tref <<11);

	start_timer2();

}
