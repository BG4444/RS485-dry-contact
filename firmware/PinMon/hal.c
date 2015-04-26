#include "hal.h"
#include <avr/eeprom.h>
#include <inttypes.h>

uint8_t EEMEM mac=    0b00000001;
uint8_t EEMEM mac_crc=0b10101011;

enum Status
{
	init_master,
	garbaged_config,
	active,
	wait_for_master,
	first,
	second,
	done

};

volatile uint8_t status;
volatile uint8_t dev_id;
volatile uint8_t clock;
volatile uint8_t cur_dev_id;
volatile uint8_t writer_status;
volatile uint8_t pin_status;

ISR(TIMER1_OVF_vect)
{
	switch(status)
	{
		case init_master:
		{
			invert_status();
			status=active;
			start_tx_timer();
			break;
		}
		case garbaged_config:
		{
			invert_status();
			invert_tx();
			break;
		}
		case wait_for_master:
		{
			invert_status();
			break;
		}
	}
}

ISR(TIMER0_OVF_vect)
{
	if(cur_dev_id++==dev_id)
	{
		invert_status();
		output_on();
		UDR0=dev_id;	
		writer_status=first;	
	}
	else
	{
		if(cur_dev_id & 0x8)
		{
			cur_dev_id=0;
		}
	}
	reset_tx_clock();
}

ISR(USART_TX_vect)
{
	switch(writer_status)
	{
		case first:
		{
			pin_status=current_status();
			UDR0=pin_status;
			writer_status=second;
			break;
		}
		case second:
		{
			UDR0=pin_status^dev_id;
			writer_status=done;
			break;
		}
		case done:
		{
			output_off();
			invert_status();
		}

	}
}

ISR(USART_RX_vect)
{
	if(UDR0==0)
	{
		input_off();
		status=active;
		start_tx_timer();
		TCNT0=256-(147-37);
		cur_dev_id=1;
	}
}



void init_io()
{
	DDRB=0;
	PORTB= (1<<PINB3) | (1<<PINB4) | (1<<PINB5);

	DDRC = (1<<PINC4) | (1<< PINC5);
	PORTC= (1<<PINC0) | (1<<PINC1);

	DDRD = (1 << PIND3);
	PORTD= (1 << PIND4) | (1<<PIND5);
}

void init_timer()
{
	TCCR1B= 1<<CS12;
	TIMSK1= 1<<TOIE1;
	
	TCCR0B= (1<<CS02) | (1<<CS00);		
}

void init_config()
{
	dev_id=eeprom_read_byte(&mac);
	const uint8_t cfgctrl=eeprom_read_byte(&mac_crc);
    status_on();
	if(dev_id == (cfgctrl ^ 0b10101010))
	{
		if(dev_id==0x00)
		{
			status=init_master;
		}
		else
		{
			status=wait_for_master;
			input_on();
		}
	}
	else
	{		
		tx_mode_regular();		     				
		status=garbaged_config;	
	}
}

void init_usart()
{
//speed 38400
	UBRR0H=0;
	UBRR0L=25;
//8bit 1 stopbit no parity
	UCSR0C= (1<<UCSZ01) | (1<<UCSZ00);

}

void start_tx_timer()
{
	reset_tx_clock();
	cur_dev_id=0;
	TIMSK0=1<<TOIE0;	
}

uint8_t current_status()
{
	const uint8_t pinsb=(PINB & ( (1<<PINB3) | (1<<PINB4) | (1<<PINB5) ) )<<1;
	const uint8_t pinsc= PINC & ( (1<<PINC0) | (1<<PINC1)                );
	const uint8_t pinsd=(PIND & ( (1<<PIND4) | (1<<PIND5)              ) )>>1;

	return pinsb | pinsc | pinsd | (1<<7);
}
