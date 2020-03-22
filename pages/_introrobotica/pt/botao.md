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

## Uma divagação antes de continuar

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

Explodam seus circuitos `(nos simuladores, claro :p)`, façam coisas que nem vocês mesmo entendem, explodam essas coisas tambem, e descubram por que elas exploridam! O maior aprendizado vem das falhas. Estamos aqui para explicar por quê cada coisa funciona ou para de funcionar, pois já manjamos de parte da magia. O resto, porém, fica para vocês inventarem.

## De volta aos botões
### Teoria

O botão táctil é composto por quatro contatos de metal, que entram em curto quando pressionados por um disco condutor.

Tipicamente, o botão táctil apresenta dois pares de contatos opostos uns aos outros. Estes contatos estão ligados de tal forma que, internamente, o contato diretamente oposto a ele é, de fato, parte do mesmo terminal. Na direita, podemos ver como estes contatos estão conectados internamente (note que eles não se tocam).
<div align="center"><img class="image image--xl" src="https://i.imgur.com/ppox02A.png"/></div>

Quando o botão é pressionado, um outro conector interno (marcado em amarelo) faz a ligação entre os dois terminais internos do botão. Na imagem a seguir, vemos como se comporta o botão em seus dois estados:
<div align="center"><img class="image image--xl" src="https://i.imgur.com/uiySbUd.png"/></div>
Na esquerda, o botão não está pressionado, portanto ele se comporta passivamente apenas como uma ligação entre os contatos opostos.  
Na direita, o botão está pressionado, logo, um conector interno liga os dois terminais do botão, criando um curto que faz a corrente ser transmitida entre todos os contatos.

### Prática

Vamos então pôr em prática o que aprendemos sobre o funcionamento interno do botão táctil.  
Abrindo o TinkerCAD, monte este simples circuito:

**Exercicios:**  
Calcule o valor do resistor utilizando a lei de Ohm!  
Mude a conexão do negativo da bateria para outros terminais do botão. O que acontece?  
Compare a estrutura interna do botão, mostrada na parte teórica, com este exemplo. Por que este circuito funciona?
{:.warning}
<div align="center">
  <img class="image image--xl" src="https://i.imgur.com/OHv2FPv.png"/>
</div>

Tendo compreendido o circuito acima, vamos passar este exemplo para a protoboard:

**Exercicios:**  
Este circuito é exatamente igual ao anterior. Usando os conhecimentos que você tem sobre a protoboard, procure entender por quê.  
Adicione um outro LED à protoboard, e conecte ele de um modo que, ao apertar o botão, ambos os LEDs acendam.
{:.warning}
<div align="center">
  <img src="https://i.imgur.com/c7a76v2.png"/>
</div>