
import processing.serial.*;

Serial arduino;

int angulo = 90;
float distancia = -1;
float[] alvos = new float[181];
boolean conectado = false;

void setup() {
  size(900, 650);
  smooth(4);

  for (int i = 0; i <= 180; i++) {
    alvos[i] = -1;
  }

  println(Serial.list());

  String[] portas = Serial.list();

  for (int i = 0; i < portas.length; i++) {
    if (portas[i].contains("usbmodem") ||
        portas[i].contains("usbserial")) {

      try {
        arduino = new Serial(this, portas[i], 9600);
        arduino.clear();
        arduino.bufferUntil('\n');

        conectado = true;

        println("Arduino conectado: " + portas[i]);
        break;
      }
      catch (Exception e) {
        println("Falha na porta: " + portas[i]);
      }
    }
  }
}

void draw() {
  background(0);

  desenharGrade();
  desenharArcos();
  desenharAlvos();
  desenharLinha();
  desenharPainel();
}

void serialEvent(Serial porta) {
  String linha = porta.readStringUntil('\n');

  if (linha == null) return;

  String[] dados = split(trim(linha), ',');

  if (dados.length == 2) {
    try {
      int a = int(dados[0]);
      float d = float(dados[1]);

      if (a >= 0 && a <= 180) {
        angulo = a;
        distancia = d;
        alvos[a] = d;
      }
    }
    catch (Exception e) {
    }
  }
}

void desenharGrade() {
  stroke(0, 35, 15);
  strokeWeight(1);

  for (int x = 0; x < width; x += 30) {
    line(x, 0, x, height);
  }

  for (int y = 0; y < height; y += 30) {
    line(0, y, width, y);
  }
}

void desenharArcos() {
  pushMatrix();
  translate(width/2, height-65);

  noFill();
  stroke(0, 255, 80);
  strokeWeight(1.5);

  for (int r = 100; r <= 500; r += 100) {
    arc(0, 0, r*2, r*2, PI, TWO_PI);
  }

  for (int a = 0; a <= 180; a += 30) {
    line(0, 0,
      500*cos(radians(a)),
      -500*sin(radians(a)));
  }

  popMatrix();
}

void desenharAlvos() {
  pushMatrix();
  translate(width/2, height-65);

  for (int a = 0; a <= 180; a++) {
    float d = alvos[a];

    if (d > 0 && d <= 100) {
      float r = d * 5;

      float x = r*cos(radians(a));
      float y = -r*sin(radians(a));

      noStroke();
      fill(255, 0, 0, 35);
      circle(x, y, 24);

      fill(255, 0, 0);
      circle(x, y, 9);
    }
  }

  popMatrix();
}

void desenharLinha() {
  pushMatrix();
  translate(width/2, height-65);

  stroke(0, 255, 100, 50);
  strokeWeight(10);

  line(0, 0,
    500*cos(radians(angulo)),
    -500*sin(radians(angulo)));

  stroke(0, 255, 100);
  strokeWeight(2);

  line(0, 0,
    500*cos(radians(angulo)),
    -500*sin(radians(angulo)));

  popMatrix();
}

void desenharPainel() {
  fill(0, 255, 90);
  textSize(23);
  text("STARK RADAR", 22, 35);

  textSize(13);

  text("SERIAL: " + (conectado ? "CONNECTED" : "NOT CONNECTED"),
       22, 60);

  text("ANGLE: " + angulo + " DEG", 22, 88);

  if (distancia > 0) {
    text("DISTANCE: " + nf(distancia, 0, 1) + " CM",
         22, 110);
  } else {
    text("DISTANCE: NO ECHO", 22, 110);
  }

  fill(0, 255, 90);
  text("RANGE: 100 CM", width-150, 35);
}
