#include "hal.h"
#include <avr/interrupt.h>
#include <inttypes.h>

ISR(TIMER1_OVF_vect)
{
	invert_status();
}


void init_io()
{
	DDRC = (1<<PINC4) | (1<< PINC5);
	PORTC= 0;

	DDRD = (1 << PIND3);
	PORTD= 0;
}

void init_timer()
{
	TCCR1B= 1<<CS12;
	TIMSK1= 1<<TOIE1;
	sei();
}
