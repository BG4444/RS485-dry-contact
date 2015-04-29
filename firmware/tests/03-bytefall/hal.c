#include "hal.h"
#include <avr/eeprom.h>
#include <inttypes.h>

volatile uint8_t cnt=0;

ISR(TIMER1_OVF_vect)
{
	invert_status();
}

ISR(TIMER0_OVF_vect)
{
	
}

ISR(USART_TX_vect)
{
	UDR0=cnt;
	cnt++;			
}

ISR(USART_RX_vect)
{
	
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
	
}

uint8_t current_status()
{
	const uint8_t pinsb=(PINB & ( (1<<PINB3) | (1<<PINB4) | (1<<PINB5) ) )<<1;
	const uint8_t pinsc= PINC & ( (1<<PINC0) | (1<<PINC1)                );
	const uint8_t pinsd=(PIND & ( (1<<PIND4) | (1<<PIND5)              ) )>>1;

	return pinsb | pinsc | pinsd | (1<<7);
}
