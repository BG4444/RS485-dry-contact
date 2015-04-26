#pragma once
#include <avr/io.h>
inline void invert_input()
{
	PORTC ^= (1 << PINC5);
}

inline void invert_output()
{
	PORTC ^= (1 << PINC4);
}

inline void invert_status()
{
	PORTD ^= (1 << PIND3);
}
