# DHT
This example demonstrates how to read and display the humidity and temperature of DHT11/21/22 series (and compatible AM2301/2/3 and HM2301/03) sensors.  This example was tested wih atmega8, atmega328p and atmega4809 controllers.

The dht library can use any pin and a 16 bit timer. Interrupts are temporarily disabled during communication to ensure jitter free signal time measurements.  The timer settings are restored after a read call, so in principle the timer can be shared with other functionality. The library expects a dht_config.inc file which defines the pin port and timer registers to use.
