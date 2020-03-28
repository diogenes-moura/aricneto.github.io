---
layout: article
title: Interfaces básicas de comunicação
permalink: /introrobotica/pt/intro
key: intro-robotica-botao
aside:
  toc: true
sidebar:
  nav: introrobotica
comments: true
---
# Botões

Se você está lendo isso, você provavelmente já apertou um botão para ligar o computador, ou para ligar o celular. Você ligou a luz do quarto, algum dia.

Você digitou uma senha em um caixa eletrônico. Você apertou uma campainha para entrar em casa. Apertou um botão pra ignorar aquelas ligações chatas que desligam na sua cara. Todos nós já tocamos e retocamos em botões.

Na sociedade de hoje, um botão é praticamente uma necessidade para qualquer atividade que exiga interação humana. De fato, é o padrão internacional para a comunicação entre ser-humano e máquina!
{:.info}

Devido a importância deste tão popular amigo (e inimigo) de longa data, a primeira coisa que faremos é uma breve e levemente formal introdução aos botões.

Para este curso, usaramos um tipo de botão muito conhecido e utilizado no mundo da eletrônica, conhecido como tact-switch, ou botão táctil: <img class="image image--xs" src="https://i.imgur.com/JrGoJKK.jpg"/>

## Uma divagação

Em uma tarde de sol, com alguns pássaros a vagar no céu, num sol parcialmente brilhante (talvez brilhante até demais), um grande autor de ficção científica, Arthur C. Clarke, tomou um leve momento de reflexão e postulou a seguinte idéia:

<style>
  .hero-example--linear-gradient {
    background-image: linear-gradient(135deg, rgba(61,0,61,0.88) , rgba(30,0,255,0.86)), url("https://i.imgur.com/m90huMV.jpg?1");
  }
</style>

<div class="hero hero--center hero--dark hero-example--linear-gradient">
  <div class="hero__content">
    <p>Qualquer tecnologia suficientemente avançada é indistinguível da magia</p>
  </div>
</div>

É nessa curta frase que todos nós nos inspiramos. De aprendizes a mestres, haverá sempre algo tão incongruente com a realidade, que a explicação mais simples é simplesmente a magia. Certamente, vamos ver muitas magias ao longo do curso, mas aos poucos estas magias se morfarão em realidade. A física é uma coisa estranha, interessante, incrivelmente frustrante às vezes, mas completamente fascinante.

Vamos adotar este espírito. Algumas coisas podem parecer uma caixinha mágica, e é assim que apresentaremos alguns conceitos inicialmente. Mais tarde, vendo-as mais a fundo, veremos que muitas coisas não são tão complicadas como parecem ser!

É completamente normal não entender algum conceito ou componente. Alguns dos circuitos mais simples levaram literalmente centenas de anos para serem descobertos e desenvolvidos, e apenas alguns segundos para serem entendidos!
{:.info}

Não se desencoraje, estaremos aqui para esclarecer cada passo do processo.

~~Explodam seus circuitos `(nos simuladores, claro :p)`, façam coisas que nem vocês mesmo entendem, explodam essas coisas tambem, e descubram por que elas exploridam! O maior aprendizado vem das falhas. Estamos aqui para explicar por quê cada coisa funciona ou para de funcionar, pois já manjamos de parte da magia. O resto, porém, fica para vocês inventarem.~~~ Sugestão para retirar

## De volta aos botões
### Teoria

O botão táctil é composto por quatro contatos de metal, que se tocam quando pressionados por um disco condutor.

Tipicamente, o botão táctil apresenta dois pares de contatos opostos uns aos outros. Estes contatos estão ligados de tal forma que, internamente, o contato diretamente oposto a ele é, de fato, parte do mesmo terminal. Na direita, podemos ver como estes contatos estão conectados internamente (note que eles não se tocam).
<div align="center"><img class="image image--xl" src="https://i.imgur.com/ppox02A.png"/></div>

Quando o botão é pressionado, um outro conector interno (marcado em amarelo) faz a ligação entre os dois terminais internos do botão. Na imagem a seguir, vemos como se comporta o botão em seus dois estados:
<div align="center"><img class="image image--xl" src="https://i.imgur.com/uiySbUd.png"/></div>
Na esquerda, o botão não está pressionado, portanto ele se comporta passivamente apenas como uma ligação entre os contatos opostos.  
Na direita, o botão está pressionado, logo, um conector interno liga os dois terminais do botão, criando um curto que faz a corrente ser transmitida entre todos os contatos.

### Prática

Vamos então pôr em prática o que aprendemos sobre o funcionamento interno do botão táctil.  
Abrindo o TinkerCAD, monte este simples circuito:

<div align="center">
  <img class="image image--xl" src="https://i.imgur.com/OHv2FPv.png"/>
</div>

**Exercicios:**  
**1a:** Calcule o valor do resistor utilizando a lei de Ohm!  
**2a:** Mude a conexão do negativo da bateria para outros terminais do botão. O que acontece?  
**3a:** Compare a estrutura interna do botão, mostrada na parte teórica, com este exemplo. Por que este circuito funciona?
{:.warning}

Tendo compreendido o circuito acima, vamos passar este exemplo para a protoboard:

<div align="center">
  <img src="https://i.imgur.com/c7a76v2.png"/>
</div>

**Exercicios:**  
**1b:** Este circuito é exatamente igual ao anterior. Usando os conhecimentos que você tem sobre a protoboard, procure entender por quê.  
**2b:** Adicione um outro LED à protoboard, e conecte ele de um modo que, ao apertar o botão, ambos os LEDs acendam.
{:.warning}

## Aplicando ao Arduino

### Circuito

Vamos tentar agora o mesmo circuito, desta vez usando o Arduino para controlar o LED.  
Lembrando o objetivo: o LED deve ligar apenas enquanto o botão for pressionado!

Monte este esquema no TinkerCAD:
<div align="center">
  <img src="https://i.imgur.com/MrSbRRD.png"/>
</div>
**Uma breve explicação sobre o que está acontecendo no circuito:**  
Um sinal constante de 5V está sendo enviado para o botão. Quando este for pressionado, uma tensão de 5V (HIGH) será enviada para o pino 12 do Arduino.
<div align="center">
  <img src="https://i.imgur.com/1NnOQgX.png"/>
</div>
O ánodo do LED está conectado por um resistor de 220 Ω ao pino 4 do Arduino, enquanto que o cátodo está conectado direto ao GND.
<div align="center">
  <img src="https://i.imgur.com/TUp9lbL.png"/>
</div>

### Código

Envie o seguinte código para seu Arduino:

```c
// Variaveis para definir o pino dos componentes
int pinoLed = 4;
int pinoBotao = 12;
// Variavel para guardar o estado do botão
int estadoBotao;

void setup() {
  // Configurar o botao como entrada, LED como saida
  pinMode(pinoBotao, INPUT);
  pinMode(pinoLed, OUTPUT);
}

void loop() {
  // Salvar o estado do botão na variável estadoBotão, utilizando a função digitalRead.
  // No caso, estadoBotao será HIGH se o botão estiver pressionado, ou LOW, se não
  // estiver pressionado.
  estadoBotao = digitalRead(pinoBotao);
  // Escrever o estado do botão para o pino do LED.
  digitalWrite(pinoLed, estadoBotao);
  
  // Esperar um tempo para não dar muito trabalho ao simulador
  // (este delay não é necessário na vida real)
  delay(10);
}
```

**Exercicio:**  
**1c:** Cada linha de código está comentada.  
Tente compreender o que deve acontecer, monte o circuito, e inicie a simulação!
{:.warning}

### Rodando

Se tudo der certo, o LED deverá ligar apenas quando o botão for apertado, afinal, o cirtuito está todo correto... *certo?...*
<div align="center">
  <img src="https://i.imgur.com/6hopkbD.png"/>
</div>
<div align="center"><p style="font-size:90%;">algo de errado não está certo</p></div>
Ao conectar a placa, vemos que o LED permanece ligado, apertando ou não o botão. Alguma coisa deve estar errada.  
O que está faltando nesse circuito? Ou será alguma coisa no código? Vamos fazer um experimento:  
Conecte o GND ao outro terminal do botão. O que acontece?

**Atencão:**  
Faça o experimento a seguir **APENAS** no simulador. Em uma placa de verdade, o curto pode danificar permanentemente seu Arduino!
{:.error}
<div align="center">
  <img src="https://i.imgur.com/aNYXglu.png"/>
</div>
O LED agora está desligado. Ao apertar o botão, nada muda. Na vida real, porém, isso causaria um curto entre o +5V e o GND, o que poderia queimar a sua placa.

De volta a estaca zero. Em um caso, temos um LED permanentemente ligado, em outro, temos um permanentemente desligado.

### Momentos de magia

Para entender o que está acontecendo com esse circuito, vamos antes para uma simples analogia (se prepare):

---

Imagine você, sentado no banco do parquinho.  
No fundo, você avista o famoso Bill Gates andando em sua direção. Bill Gates, ou Bill, como gosto de chama-lo, senta ao seu lado. Depois de um certo inquieto silêncio, Bill vira para você e lhe entrega um pedaço de papel com algo escrito.  
Bill diz que lhe dará um emprego na Microsoft se você conseguir seguir o seguinte **comando**:
> Leia o que está escrito no papel em voz alta.  

*"Muito fácil"*, você pensa, enquanto desdobra o papel para ver o que há dentro. Ao revelar o conteúdo do papel, porém, você se depara com o seguinte:

> ȏ̴͔̭̰̩̉ ̷̥̥̝͓̍̾́͜ŗ̵̠̲́̆a̴͖͇͙̱͉͑͋̂ṱ̵̭̳́o̷̥͈͎͂̎ ̶̫̃̃r̵̖̿̋̈́́o̴̯̾̓͝͝ḛ̵͇͇̗̯̈̆͋̔ụ̵̘̞̳̐̕̚͠ ̵̭̭͗͜a̵̲͔̩̱̰̅̈ ̴̩̀̉̈͐͆r̴̦̦̮͒̉͒̔͜͝ò̷͔̺̼̀̉u̸̺̫͇͂p̸͓̯̆͗͗͝͝a̶͍͔͎̍̅̈́͝͠ ̶͇̩̰͛͋̔̏d̴̻̺̝͓̗̒͋͗̔͘ȯ̵̠͚̏ ̵̟͌͝ͅr̷̜͛̇̓̕͠ê̸͕ï̵͈̯͈̳̚ ̷͓̱͇̍͛̈́ͅd̷̡͖͓̗͈̊e̴̢̳̲̲͇̾̌͒͛̑ ̸̧̢̫͚̹͂̀ȓ̵̹̬̳͓o̵̖̊͐̒͘m̵̧̙͈̂͌͘a̷̢̛͎͙͚ 

<div align="center">
  <img class="image image--xl" src="https://i.imgur.com/5kl8Rh8.png"/>
</div>

Desesperado para ganhar seu emprego na Microsoft, você imagina que nem mesmo o grande Bill entende o que está escrito naquele papel. Então, claramente, você começa a declamar com toda a confiança o conteúdo presente em tal documento:
>AtrOcAdUcaPacaUSTiDUplIeLASTIFeLIFeROFUGAHiS

Bill olha para você incrédulo.  
Claramente, isto não é o que ele tinha em mente. Ele pede para dar uma olhada no papel que acabou de entregar para você. De olhos semisserrados, Bill analisa com cuidado o documento. Ele olha novamente para você e diz:
> Eita rapaz, esqueci de instalar o dicionário na minha impressora

Claramente um dia normal para o famoso ex-CEO da Microsoft.  
Bill Gates dá uma corridinha para seu escritório, instala uma cópia do Aurélio em sua impressora, imprime novamente o documento, e volta correndo para você, entregando um novo papel. *"Leia novamente"*, diz Bill.

Você dá uma olhada no papel e vê o seguinte:
> o rato roeu a roupa do rei de roma

O resto é história. Em breve em um cinema próximo de vocês.

---

Então, o que quer dizer tudo isso? Perai, Bill Gates ainda tá contratando?

Bom, se toda essa história pareceu extremamente confusa para você, imagine para o pobre Arduino!

O ponto que queremos chegar é que, quando você pede para o Arduino ler um sinal digital através da função digitalRead, ele vai fazer todo o esforço possível para ler qualquer coisa que estiver passando por aquela porta!  
Qualquer minima radiação, um milésimo sinal de estática, umas ondinhas de rádio.
{:.info}

Sem mostrar ao Arduino o que você considera como `HIGH` ou `LOW`, você está apenas pedindo pra ele ler qualquer besteira que apareça pelo ar, e interpretar como `0` ou `1`. E, como ele foi programado para obedecer seus comandos, ele irá fazer exatamente isto. No fim, sem um ponto de referência, o pobre senhor Arduino não tem idéia do que falar, e só vai jogando pra você o que ele achar que se classica como `HIGH` ou `LOW`

Porém, se você der pra ele um "dicionário", ou seja, mostrar para ele o que é um sinal `HIGH`, e o que é um sinal `LOW`, ele vai poder usar esse ponto de referência para classificar cada sinal que recebe, e lhe dar uma resposta correta. Então, o que seria esse "dicionário"? Ou melhor, esta referência?

### O resistor pull-down

Nos experimentos acima, vimos que, ao conectar o GND à um dos terminais do botão, o LED permanece apagado. Porém, ao pressionar o botão, você causa um curto que pode queimar o seu Arduino. Sem o GND, o LED oscila entre ligado e desligado, aleatoriamente.

Notou alguma semelhança com a analogia descrita acima? Quando conectamos o GND diretamente ao pino de leitura do botão, estamos dando uma referência ao Arduino. Uma pequena nota de rodapé que diz para ele: *"Isso aqui significa LOW"*.

O problema poderia ser resolvido simplesmente com essa conexão direta do pino ao GND. Porém, lembrando a lei de Ohm:

$$V = I * R$$

Considerando que um fio comum tem, em média, uma resistência de 0.1 Ω, fazer um curto direto do GND ao +5V do Arduino com um fio resultaria em uma corrente extremamente alta!

$$5 = I * 0.1 \: \Omega$$

$$I = 50 \: A$$

Ou seja, 50 amperes estariam passando pelo Arduino[^1]. Para comparação, uma churrasqueira elétrica tipicamente usa apenas 10 amperes (porém com uma voltagem muito maior).  

[^1]: Essa corrente, porém, é limitada pela potência da fonte de alimentação usada na placa

**Desafio:**  
**1d:** Como vimos, ligar o GND ao pino de entrada do Arduino para dar uma referência funciona apenas enquanto o botão não está apertado.  
Que meio temos para diminuir a corrente que passa pelo curto entre o GND e o +5V, e fazer com que, ao pressionar o botão, a maior parte da corrente passe apenas para o pino de leitura, e não para o GND?
{:.warning}

---

Para limitar a corrente, usamos um resistor!  
Com o mesmo código e circuito, apenas adicione um resistor de 10k Ω ligando o GND e pino de entrada:
<div align="center">
  <img src="https://i.imgur.com/ntDCJoA.png"/>
</div>

**Exercícios:**  
**1e:** Utilizando a lei de Ohm, calcule a corrente que está passando por cada pino que definimos no Arduino, com o botão ligado e desligado.  
*(haverá uma divergência entre o valor calculado e o real, explicaremos mais tarde por quê)*  
**2e:** Insira mais um LED no circuito, e faça com que ambos sejam ligados quando o botão for apertado.  
**3e:** Insira mais um botão no circuito, e faça com que cada botão ligue um LED diferente.
{:.warning}
