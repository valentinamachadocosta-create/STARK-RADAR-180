
#include <Servo.h>

Servo radar;

const int TRIG = 10;
const int ECHO = 11;
const int SERVO_PIN = 9;

const int MIN_ANGULO = 10;
const int MAX_ANGULO = 170;
const int PASSO = 3;

float medirDistancia() {
  digitalWrite(TRIG, LOW);
  delayMicroseconds(2);

  digitalWrite(TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG, LOW);

  unsigned long duracao = pulseIn(ECHO, HIGH, 10000);

  if (duracao == 0) {
    return -1;
  }

  return duracao * 0.0343 / 2.0;
}

void setup() {
  Serial.begin(9600);

  pinMode(TRIG, OUTPUT);
  pinMode(ECHO, INPUT);

  radar.attach(SERVO_PIN);
  radar.write(MIN_ANGULO);

  delay(300);
}

void varrer(int inicio, int fim, int passo) {
  for (
    int a = inicio;
    passo > 0 ? a <= fim : a >= fim;
    a += passo
  ) {
    radar.write(a);
    delay(18);

    float distancia = medirDistancia();

    Serial.print(a);
    Serial.print(",");

    if (distancia < 0) {
      Serial.println(-1);
    } else {
      Serial.println(distancia, 1);
    }
  }
}

void loop() {
  varrer(MIN_ANGULO, MAX_ANGULO, PASSO);
  varrer(MAX_ANGULO, MIN_ANGULO, -PASSO);
}
