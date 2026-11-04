# DOCUMENTAÇÃO TÉCNICA — STARK RADAR 180°

## 1. Introdução

O STARK RADAR 180° é um projeto de robótica experimental desenvolvido para detectar objetos em uma área semicircular de aproximadamente 180 graus.

O sistema combina um sensor ultrassônico HC-SR04, um servo motor SG90, uma placa Arduino Uno e o software Processing 4.

O objetivo é demonstrar, de maneira prática, conceitos de eletrônica, programação, automação e comunicação entre hardware e computador.

## 2. Lista de materiais

| Material | Quantidade | Função |
|---|---:|---|
| Arduino Uno | 1 | Controlador principal |
| HC-SR04 | 1 | Medição de distância |
| Servo SG90 | 1 | Movimentação do sensor |
| Jumpers | Conforme necessário | Conexões elétricas |
| Cabo USB | 1 | Alimentação e comunicação |
| Computador | 1 | Interface gráfica |

## 3. Ferramentas e programas

- Arduino IDE
- Processing 4
- Computador com conexão USB
- Cabo USB compatível com Arduino Uno

## 4. Ligações eletrônicas

### 4.1 Sensor ultrassônico HC-SR04

| HC-SR04 | Arduino Uno |
|---|---|
| VCC | 5V |
| TRIG | D10 |
| ECHO | D11 |
| GND | GND |

### 4.2 Servo motor SG90

| Servo | Arduino Uno |
|---|---|
| Sinal | D9 |
| Vermelho | 5V |
| Marrom/preto | GND |

Antes de ligar o sistema, confira cuidadosamente todas as conexões. Um contato ruim pode causar falhas ou movimentos irregulares.

## 5. Processo de montagem

### Etapa 1 — Preparação

Separe todos os componentes e confira se estão em boas condições.

### Etapa 2 — Instalação do sensor

Conecte o HC-SR04 ao Arduino Uno utilizando os pinos indicados na tabela de ligações.

### Etapa 3 — Instalação do servo

Conecte o servo ao Arduino Uno e prepare a estrutura para que ele possa movimentar o sensor.

### Etapa 4 — Programação do Arduino

Abra a Arduino IDE, carregue o arquivo `Arduino/stark_radar.ino` e envie o programa para a placa.

### Etapa 5 — Comunicação serial

O Arduino envia os dados no formato:

`angulo,distancia`

Exemplo:

`90,35.5`

A velocidade de comunicação utilizada é de 9600 baud.

### Etapa 6 — Interface gráfica

Abra o arquivo `Processing/stark_radar.pde` no Processing 4.

Execute o programa e verifique se a conexão serial foi estabelecida.

### Etapa 7 — Teste do radar

Coloque um objeto diante do sensor, em uma distância segura, e observe a representação gráfica na tela.

## 6. Funcionamento do sistema

O funcionamento acontece em um ciclo:

1. O Arduino posiciona o servo motor.
2. O sensor ultrassônico realiza uma medição.
3. A distância é calculada pelo Arduino.
4. O ângulo e a distância são enviados pela comunicação serial.
5. O Processing interpreta os dados.
6. A interface atualiza a linha de varredura e os pontos de detecção.

## 7. Interface gráfica

A interface foi desenvolvida no Processing 4.

Características:

- Fundo preto.
- Grade verde.
- Arcos semicirculares.
- Linha de varredura verde.
- Pontos vermelhos para representar detecções.
- Indicador de ângulo.
- Indicador de distância.
- Estado da conexão serial.

## 8. Testes e validação

Os testes do projeto devem verificar:

- Se o Arduino é reconhecido pelo computador.
- Se o servo realiza a varredura.
- Se o sensor mede distâncias.
- Se os dados chegam ao Processing.
- Se os pontos aparecem na posição correspondente.
- Se a interface atualiza durante a varredura.

**Importante:** os resultados e fotografias dos testes devem ser registrados com evidências reais. Não foram incluídos valores de precisão ou alcance certificado.

## 9. Solução de problemas

### O servo não se movimenta

- Confira o fio de sinal no pino D9.
- Confira a alimentação.
- Verifique os contatos dos jumpers.
- Confira se o servo não está mecanicamente preso.

### O sensor não mede

- Confira VCC e GND.
- Confira TRIG no D10.
- Confira ECHO no D11.
- Verifique se há algum obstáculo dentro da área de medição.

### O Processing não conecta

- Confira se o Arduino está conectado por USB.
- Verifique a porta serial listada pelo Processing.
- Confira se a velocidade é 9600 baud.
- Feche o Monitor Serial da Arduino IDE antes de abrir a conexão pelo Processing.

### A interface não mostra objetos

- Confira se o sensor está recebendo ecos.
- Verifique o formato dos dados enviados.
- Confira a conexão serial.

## 10. Limitações

Este projeto é experimental e utiliza um sensor ultrassônico de medição pontual.

O sistema não identifica automaticamente o tipo de objeto, não produz imagens e não substitui equipamentos profissionais de radar.

A qualidade da medição pode variar conforme o material, a forma e o ângulo da superfície detectada.

## 11. Melhorias futuras

- Estrutura física personalizada.
- Interface gráfica mais avançada.
- Registro de dados.
- Melhorias na estabilidade mecânica.
- Ampliação dos recursos de visualização.

## 12. Conclusão

O STARK RADAR 180° demonstra como componentes eletrônicos acessíveis podem ser integrados para criar um sistema funcional de detecção e visualização.

O projeto reúne conhecimentos de robótica, eletrônica, programação e desenvolvimento de interfaces, servindo como base para futuras experiências e melhorias.

---

**STARK RADAR 180°**

Projeto independente de robótica experimental.
