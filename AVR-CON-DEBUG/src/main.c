#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdbool.h>

#define BAUD 19200
volatile char conData[2];
char strbuf[64];
// PD6 OC1A DCMotor1
// PD2,PD3  DCMotor1 Direction

// PD5 OC0A DCMotor2
// PD4,PD7  DCMotor2 Direction

// PB1 OC1A Servo
// OCR1A min 150(0.8ms) max 412(2.2ms) width 262

// 通信データ(先頭1ビットはバイト判別用)
// BTx1 R1x3(MT_L) R2x3(MT_R)
// BTx1 R3x3(Servo) R4x3

// struct{
// 	uint8_t val;//max 3
// 	bool forward;
// } mots[2];

void setControl(bool isDat1){
	if(isDat1==false){
		//motor-L R1
		// mots[1].forward = (conData[0]>>3)&0x4;
		// if(mots[1].forward) mots[1].val = (conData[0]>>3)&0x3;
		// else mots[1].val = 7-((conData[0]>>3)&0x3);
		if((conData[0]>>3)&0x4) {
			sprintf(strbuf,"MotorL:forward\r\nPow:%d",(conData[0]>>3)&0x3);
		}else{
			sprintf(strbuf,"MotorL:backward\r\nPow:%d",7-(conData[0]>>3)&0x3);
		}
		for(uint8_t i = 0;i<sizeof(strbuf);i++){
			if(strbuf[i]==0)break;
			loop_until_bit_is_set(UCSR0A,UDRE0);
			UDR0 = strbuf[i];
		}
		
		//motor-L R2
		// mots[0].forward = (conData[0])&0x4;
		// if(mots[0].forward) mots[0].val = (conData[0])&0x3;
		// else mots[0].val = 7-((conData[0])&0x3);
		if(conData[0]&0x4) {
			sprintf(strbuf,"MotorL:forward\r\nPow:%d",(conData[0])&0x3);
		}else{
			sprintf(strbuf,"MotorL:backward\r\nPow:%d",7-(conData[0])&0x3);
		}
		for(uint8_t i = 0;i<sizeof(strbuf);i++){
			if(strbuf[i]==0)break;
			loop_until_bit_is_set(UCSR0A,UDRE0);
			UDR0 = strbuf[i];
		}
	}else{
		//servo R3
		sprintf(strbuf,"Servo:%d\r\n",(conData[1]>>3)&0x3);
		for(uint8_t i = 0;i<sizeof(strbuf);i++){
			if(strbuf[i]==0)break;
			loop_until_bit_is_set(UCSR0A,UDRE0);
			UDR0 = strbuf[i];
		}
	}
}

ISR(USART_RX_vect){
	unsigned char data = UDR0;
	if(data & 0x80){
		conData[1]=data;
		setControl(true);
		}
	else{
		conData[0]=data;
		setControl(false);
	}
}

int main(void){
	DDRD = 0xFC;//PD0,PD1以外を使う
	PORTD = 0x00;
	UBRR0 = 12000000UL / (BAUD * 16L)-1;
	UCSR0B = _BV(TXEN0)|_BV(RXEN0)|_BV(RXCIE0);
	UCSR0C = _BV(UCSZ01)|_BV(UCSZ00);

	//servo
	TCCR1A = 0x82;//OCR1A比較 高速PWM top=ICR1 OC1A出力(PB1)
	TCCR1B = 0x1A;//64分周
	ICR1 = 3750;//(12M/64) x 0.020

	//DC motor
	TCCR0A = 0xA3;//OCR0A,0B比較 8bit高速PWM top=0xFF OC0A,0B出力(PD6,PD5)
	TCCR0B = 0x01;//Td=1μsのため255/12M>1μより分周は必要ない(1)

	sei();
	while(1){
	}
}