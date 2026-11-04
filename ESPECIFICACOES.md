# ESPECIFICAÇÕES TÉCNICAS — STARK RADAR 180°

## 1. Identificação

- Nome: STARK RADAR 180°
- Categoria: Robótica experimental
- Tipo: Sistema ultrassônico de detecção
- Controlador: Arduino Uno
- Interface gráfica: Processing 4

## 2. Hardware

| Componente | Especificação |
|---|---|
| Microcontrolador | Arduino Uno |
| Sensor | HC-SR04 |
| Motor | Servo SG90 |
| Comunicação | USB / Serial |
| Computador | Mac |

## 3. Parâmetros de funcionamento

| Parâmetro | Configuração |
|---|---|
| Ângulo inicial | 10° |
| Ângulo final | 170° |
| Passo de varredura | 3° |
| Velocidade serial | 9600 baud |
| Tempo de espera do servo | 18 ms |
| Limite visual de detecção | 100 cm |

## 4. Mapeamento de pinos

| Arduino Uno | Função |
|---|---|
| D9 | Sinal do servo |
| D10 | TRIG do HC-SR04 |
| D11 | ECHO do HC-SR04 |
| 5V | Alimentação |
| GND | Terra |

## 5. Software

- Arduino IDE: programação do microcontrolador.
- Processing 4: interface gráfica.
- Linguagem Arduino: C/C++.
- Linguagem Processing: Java.

## 6. Comunicação

O Arduino envia os dados para o computador no formato:

`angulo,distancia`

Exemplo:

`90,35.5`

Quando não há retorno do eco dentro do tempo configurado, o Arduino envia `-1`.

## 7. Observações técnicas

O limite visual de 100 cm é uma configuração do programa Processing, não uma certificação do alcance máximo do HC-SR04.

O desempenho real depende das condições de montagem, alimentação, superfície dos objetos e ambiente.

## 8. Resumo

O STARK RADAR 180° integra sensores, movimento mecânico, programação embarcada e visualização computacional em um único sistema experimental.

**STARK RADAR 180° — Stark-inspired engineering project.**
