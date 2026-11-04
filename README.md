# STARK-RADAR-180
Radar ultrassônico de 180 graus com Arduino Uno, HC-SR04, servo motor e interface visual em Processing.
# STARK RADAR 180°

### Radar ultrassônico de 180° com Arduino Uno e Processing

Um projeto de robótica desenvolvido para detectar objetos por meio de ondas ultrassônicas e representar suas posições em uma interface gráfica em tempo real.

---

## Sobre o projeto

O STARK RADAR 180° é um radar experimental que utiliza um sensor ultrassônico HC-SR04 acoplado a um servo motor SG90.

O servo movimenta o sensor horizontalmente, enquanto o Arduino Uno mede a distância dos objetos. Os dados são enviados pela comunicação serial para o Processing 4, que apresenta as informações em uma interface gráfica inspirada em radares tecnológicos.

## Objetivos

- Desenvolver um sistema de detecção de objetos.
- Trabalhar com sensores ultrassônicos.
- Controlar um servo motor.
- Estabelecer comunicação serial entre Arduino e computador.
- Criar uma interface gráfica de visualização em tempo real.

## Componentes

| Componente | Quantidade |
|---|---:|
| Arduino Uno | 1 |
| Sensor ultrassônico HC-SR04 | 1 |
| Servo motor SG90 | 1 |
| Jumpers | Conforme necessário |
| Cabo USB | 1 |
| Computador | 1 |

## Ligações eletrônicas

### HC-SR04

| Pino do sensor | Arduino Uno |
|---|---|
| VCC | 5V |
| TRIG | D10 |
| ECHO | D11 |
| GND | GND |

### Servo motor SG90

| Fio do servo | Ligação |
|---|---|
| Sinal | D9 |
| Vermelho | 5V |
| Marrom ou preto | GND |

**Atenção:** confira a alimentação e as conexões antes de ligar o circuito. Se o servo apresentar instabilidade, verifique os contatos e a alimentação.

## Como funciona

1. O servo movimenta o sensor ultrassônico.
2. O HC-SR04 emite ondas ultrassônicas.
3. O sensor recebe o eco refletido pelos objetos.
4. O Arduino calcula a distância.
5. Os dados são enviados pela porta serial.
6. O Processing recebe os dados e desenha os pontos detectados na tela.

## Tecnologias utilizadas

- Arduino
- C/C++ para microcontroladores
- Processing 4
- Comunicação serial
- Sensor ultrassônico
- Servo motor

## Interface visual

A interface apresenta:

- Fundo preto.
- Grade e arcos verdes.
- Linha de varredura.
- Pontos vermelhos representando objetos detectados.
- Ângulo atual do sensor.
- Distância medida em centímetros.
- Indicador de conexão serial.

## Como executar

### 1. Preparar o hardware

Monte as conexões conforme as tabelas deste documento.

### 2. Programar o Arduino

1. Abra a Arduino IDE.
2. Conecte o Arduino Uno ao computador.
3. Abra o arquivo `Arduino/stark_radar.ino`.
4. Selecione a placa Arduino Uno.
5. Selecione a porta correta.
6. Envie o código para a placa.

### 3. Executar o Processing

1. Instale o Processing 4.
2. Abra `Processing/stark_radar.pde`.
3. Confira se a porta serial corresponde ao Arduino.
4. Execute o programa.

A comunicação serial utiliza velocidade de 9600 baud.

## Estrutura do repositório

```text
STARK-RADAR-180/
│
├── Arduino/
│   └── stark_radar.ino
│
├── Processing/
│   └── stark_radar.pde
│
├── images/
│
├── README.md
├── DOCUMENTACAO.md
├── APRESENTACAO.md
└── LICENSE
```

## Possíveis melhorias futuras

- Aumentar a precisão das medições.
- Melhorar a interface gráfica.
- Adicionar histórico de detecções.
- Implementar identificação de objetos.
- Desenvolver uma estrutura física mais compacta.

## Autoria

Projeto independente de robótica experimental.

**STARK RADAR 180° — Tecnologia, programação e robótica na prática.**




---

## Documentação do projeto

Confira os documentos técnicos:

- [Documentação técnica](DOCUMENTACAO.md)
- [Ligações elétricas](LIGACOES.md)
- [Especificações técnicas](ESPECIFICACOES.md)

## Código-fonte

- [Código Arduino](Arduino/stark_radar.ino)
- [Interface Processing](Processing/stark_radar.pde)

## Licença

Este projeto está disponibilizado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE).

