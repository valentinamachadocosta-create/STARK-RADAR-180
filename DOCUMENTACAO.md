# DOCUMENTAÇÃO TÉCNICA — STARK RADAR 180°

## 1. APRESENTAÇÃO

O STARK RADAR 180° é um projeto de robótica experimental desenvolvido para detectar objetos em uma área semicircular.

O sistema utiliza um sensor ultrassônico HC-SR04, um servo motor SG90, uma placa Arduino Uno e o software Processing 4.

## 2. OBJETIVOS

- Desenvolver um radar de detecção de objetos.
- Aplicar conceitos de eletrônica e programação.
- Controlar um servo motor.
- Realizar medições com ultrassom.
- Transmitir dados entre Arduino e computador.
- Criar uma interface gráfica em tempo real.

## 3. COMPONENTES

| Componente | Quantidade |
|---|---:|
| Arduino Uno | 1 |
| Sensor HC-SR04 | 1 |
| Servo motor SG90 | 1 |
| Jumpers | Conforme necessário |
| Cabo USB | 1 |
| Computador | 1 |

## 4. LIGAÇÕES ELÉTRICAS

### Sensor HC-SR04

| Sensor | Arduino |
|---|---|
| VCC | 5V |
| TRIG | D10 |
| ECHO | D11 |
| GND | GND |

### Servo SG90

| Servo | Arduino |
|---|---|
| Sinal | D9 |
| Vermelho | 5V |
| Marrom/preto | GND |

Confira todas as conexões antes de alimentar o circuito.

## 5. FUNCIONAMENTO

1. O servo movimenta o sensor.
2. O sensor emite ondas ultrassônicas.
3. O eco retorna após atingir um objeto.
4. O Arduino calcula a distância.
5. Os dados são enviados pela comunicação serial.
6. O Processing apresenta os resultados graficamente.

## 6. CONFIGURAÇÃO DO SOFTWARE

### Arduino IDE

1. Instale a Arduino IDE.
2. Conecte o Arduino Uno.
3. Abra `Arduino/stark_radar.ino`.
4. Selecione Arduino Uno.
5. Selecione a porta correta.
6. Envie o programa.

### Processing 4

1. Instale o Processing 4.
2. Abra `Processing/stark_radar.pde`.
3. Confira a porta serial.
4. Execute o programa.

A comunicação utiliza 9600 baud.

## 7. TESTES

Os testes devem verificar:

- Movimento do servo.
- Leitura do sensor.
- Comunicação serial.
- Atualização da interface.
- Detecção de objetos.

Os resultados devem ser registrados com fotografias e vídeos reais.

## 8. SOLUÇÃO DE PROBLEMAS

**Servo não funciona:**
- Verifique a alimentação.
- Confira o sinal D9.
- Verifique os contatos dos fios.

**Sensor não mede:**
- Confira VCC e GND.
- Confira TRIG e ECHO.
- Verifique se existe algum obstáculo dentro do alcance.

**Processing não conecta:**
- Confira a porta serial.
- Feche o Monitor Serial da Arduino IDE.
- Confira a velocidade de 9600 baud.

## 9. LIMITAÇÕES

O projeto utiliza um sensor ultrassônico pontual. Ele não identifica o tipo de objeto e não substitui um radar profissional.

A precisão depende das características da superfície e das condições da medição.

## 10. MELHORIAS FUTURAS

- Estrutura física personalizada.
- Interface gráfica aprimorada.
- Histórico de detecções.
- Melhorias mecânicas.
- Novos recursos de visualização.

## 11. CONCLUSÃO

O STARK RADAR 180° demonstra a integração de eletrônica, programação e robótica em um sistema experimental funcional.

O projeto permite aplicar conhecimentos técnicos e desenvolver novas soluções a partir de componentes acessíveis.

---

**STARK RADAR 180° — Robótica na prática.**
