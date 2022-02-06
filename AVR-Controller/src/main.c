#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>

//ADC SRC PC0~3

#define BAUD 19200
volatile char sendData[2];
volatile unsigned int sendItr=0;

volatile char adcs[4];
volatile unsigned int adcItr=0;

ISR(USART_TX_vect){
	UDR0 = sendData[sendItr];//send Data
	if(++sendItr==2)sendItr=0;//inclease sendItr
}

ISR(ADC_vect){
	adcs[adcItr]=ADC>>2;//read adc and shift to 8bit
	if(++adcItr==4)adcItr=0;//inclease adcItr

	ADCSRA=(ADCSRA&0xF8)|(adcItr&0x07);//toggle source

	if(adcItr<2){
		sendData[0] = 0x80 | ((adcs[0]>>5)&0x7)<<3 |(adcs[1]>>5)&0x7;
	}else{
		sendData[1] = 0x80 | ((adcs[2]>>5)&0x7)<<3 |(adcs[3]>>5)&0x7;
	}

	ADCSRA|=_BV(ADSC);//enable adc
}

int main(void){
	UBRR0 = 12000000UL / (BAUD * 16L)-1;
	UCSR0B = _BV(TXEN0)|_BV(RXEN0)|_BV(TXEN0);
	UCSR0C = _BV(UCSZ01)|_BV(UCSZ00);
	
	unsigned char buff[16];
	ADMUX=_BV(ADLAR);
	ADCSRA=_BV(ADEN)|_BV(ADSC)|_BV(ADIE)|0x07;
	ADCSRB=0;

	ADCSRA|=_BV(ADSC);//enable adc
	sei();//enable interrupt
	while(1){
	}
}