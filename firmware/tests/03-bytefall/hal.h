#pragma once
#include <avr/io.h>
#include <avr/interrupt.h>


inline void input_on()
{
	UCSR0B |= (1<<RXCIE0) | (1<<RXEN0);
	PORTC &= ~(1 << PINC5);
}

inline void input_off()
{
	UCSR0B &= ~((1<<RXCIE0) | (1<<RXEN0));
	PORTC  |= (1 << PINC5);
}


inline void output_on()
{
	UCSR0B|= (1<<TXCIE0) | (1 <<TXEN0);
	PORTC |= (1 << PINC4);
}

inline void output_off()
{
	UCSR0B&= ~((1<<TXCIE0) | (1 <<TXEN0));
	PORTC &= ~((1 << PINC4));
}



inline void invert_status()
{
	PORTD ^= (1 << PIND3);
}

inline void invert_tx()
{
	PORTD ^= (1 << PIND1);
}

inline void status_on()
{
	PORTD |= (1 << PIND3);
}

inline void tx_off()
{
	PORTD &= ~(1 << PIND1);
}

inline void usart_disable_tx()
{
	UCSR0B &=~(1<<TXEN0);
}


inline void tx_mode_regular()
{
	usart_disable_tx();
	DDRD |= (1 << PIND1);
	tx_off();
}

inline void reset_tx_clock()
{
	TCNT0=256-147;
}

void start_tx_timer();

void init_io();
void init_timer();
void init_config();
void init_usart();
uint8_t current_status();
