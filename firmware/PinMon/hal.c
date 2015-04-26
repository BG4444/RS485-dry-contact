#include "hal.h"
#include <avr/io.h>
#include <avr/interrupt.h>

ISR(TIMER0_OVF_vect)
{
}

void init_io()
{
	DDRC = 1<<PINC4 | 1<< PINC5;
	PORTC= 0;
}

void init_timer()
{

}
