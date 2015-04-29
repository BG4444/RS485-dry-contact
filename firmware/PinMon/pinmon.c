#include "hal.h"


int main()
{
	init_io();
	init_config();
	init_usart();	
	init_timer();
	sei();
	while(1);
}
