#include "hal.h"


int main()
{
	init_io();
	init_config();
	init_usart();	
	init_timer();
	sei();
	output_on();
	UDR0=0xFF;
	while(1);
}
