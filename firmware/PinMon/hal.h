#pragma once
#include <avr/io.h>
#include <avr/interrupt.h>

//enable usart rx clock and max485 output
inline void input_on()
{
	UCSR0B |= (1<<RXCIE0) | (1<<RXEN0);
	PORTC &= ~(1 << PINC5);
}
//disable usart rx  and max485 output
inline void input_off()
{
	UCSR0B &= ~((1<<RXCIE0) | (1<<RXEN0));
	PORTC  |= (1 << PINC5);
}
inline void max_out_on()
{
	PORTC |= (1 << PINC4);
}
inline void max_out_off()
{
	PORTC &= ~(1 << PINC4);
}
//disable usart tx clock and interrupt on tx-end
inline void usart_disable_tx()
{
	UCSR0B&= ~((1<<TXCIE0) | (1 <<TXEN0));
}
inline void usart_enable_tx()
{
	UCSR0B|= (1<<TXCIE0) | (1 <<TXEN0);
}
//enable usart tx and max485 input
inline void output_on()
{
	usart_enable_tx();
	max_out_on();
}
//disable usart tx and max485 input
inline void output_off()
{
	usart_disable_tx();
	max_out_off();
}
//invert status led
inline void invert_status()
{
	PORTD ^= (1 << PIND3);
}
//invert tx pin
inline void invert_tx()
{
	PORTD ^= (1 << PIND1);
}
//power on status led
inline void status_on()
{
	PORTD |= (1 << PIND3);
}
//power off tx led
inline void tx_off()
{
	PORTD &= ~(1 << PIND1);
}
//
inline void tx_mode_regular()
{
	output_off();
	tx_off();
}

inline void reset_timer2()
{
	TCNT2=255-52;
	GTCCR |= 1<<PSRASY;	
}

inline void start_timer2()
{
	reset_timer2();
	TIMSK2 = 1<< TOIE2;	
	TIFR2 |= 1<<TOV2;	
}

inline void stop_timer2()
{
	TIMSK2 = 0;
}


void send_update(uint8_t status);

void init_io();
void init_timer();
void init_config();
void init_usart();
uint8_t current_status();
