---
layout: post
title: Minicurso C4 Model - 1.2 "O Porque" e o "O quê" do C4 Model
date: 2026-04-10 19:50
categories: [architecture, c4model, tech]
---

Se você preferir pode [assistir essa aula no Youtube](https://youtu.be/kZKmmfv2qWc)

Olá e bem-vindo a nossa primeira aula do Minicurso de C4 Model. 

Meu nome é Emerson Almeida e nos próximos minutos vamos começar uma jornada para transformar a maneira como você documenta e comunica a arquitetura dos seus sistemas.

Esse é o meu principal objetivo aqui.

## Situações comuns

Mas antes, uma pergunta rápida: você já passou por uma destas situações?

- "Você entra numa reunião para discutir uma nova feature e alguém desenha uma arquitetura num quadro branco... que nunca mais é vista."
- "Você pede a um desenvolvedor para entender um sistema e ele te manda um link para uma página na Confluence, Notion, no Miro com um diagrama de anos atrás, completamente desatualizado."
- "Ou o desenho é estranho, mostra sistemas complexos em apenas 1 caixinha, e entra em detalhes em coisas pequenas"
- "Ou o pior: não existe documentação nenhuma, e a 'verdade' está na cabeça de duas ou três pessoas."

## A Realidade

Essa é a realidade na maioria das empresas de tecnologia, e eu vi isso em empresas que eu trabalhei, empresas que eu foi advisor, e em empresas de que conheço de amigos. 

## A promessa

E é exatamente este problema – de diagramas ambíguos, desatualizados e inúteis – que vamos resolver aqui. Vamos transformar documentação de um fardo para uma ferramenta estratégica. 

## O problema

Hoje em dia não temos mais um problema de ferramentas, você deve conhecer uma porção delas, Miro, Visio, Lucidchart, mermaid, Figma.... O problema é a **abordagem**.

Um problema que você pode resolver e que eu quero te ajudar.

### Na sua empresa hoje

E se você pegar os desenhos de arquitetura da sua empresa agora, você vai ver alguns dos seguinte problemas nele, senão todos:[^1]
[^1]: https://c4model.com/introduction#introduction

1. **Inconsistência de notação**: Time usando diferentes formas, cores e estilo de linhas, gerando confusão. O que significa uma caixa? E uma linha? É um request HTTP? Uma chamada de função? Uma conexão TCP? Sem uma notação clara, os diagramas geram mais perguntas que respostas. Vamos ter uma aula só sobre **Notação**.
2. **Ambiquidade**: Nomes confusos, relacionamentos não detalhados, termos genéricos, aumentando a dificuldade de interpretação.
3. **Falta ou a mistura do níveis de Abstração:** Um mesmo diagrama super detalhado tanto para o CEO ou para o time de Produto quanto para o dev júnior. O resultado? Ruim para os dois, as pessoas não-tech ficam confusas com os detalhes e o dev júnior não tem informação suficiente para entender o sistema. Vamos ter uma aula só sobre **Abstração**.
4. E o ponto final, o mais óbvio **Desatualização:** A arquitetura muda constantemente. Manter diagramas manuais atualizados é simplesmente inviável. Eles nascem para morrer. E eu vou te ensinar usar uma ferramenta que pode te ajudar nisso chamada **Structurizr**, é um dos nossos modulos aqui.



Agora, por que esses quatro problemas acontecem em quase todas as empresas?

## O vilão

Porque todos eles têm um inimigo em comum: 

- **TEMPO**

Quando você, como líder ou sênior, vai ter tempo para fazer um desenho bem feito, com consistência de notação e de abstração, sem ambiquidades, e manter tudo isso atualizado?

Parece difícil, e na verdade coisas como "consistência de notação e da abstração" pode nem ter passado pela sua cabeça como problema.

## Transformação

O primeiro passo você já deu, que é estar aqui assistindo essa aula, e eu acredito que o C4 Model, vai te ajudar com isso sem tomar o seu tempo, melhor ele vai te ajudar a criar software melhor. 

Volto a repetir: **Vamos transformar documentação de um fardo para uma ferramenta estratégica.**

Mudou a minha carreira e a minha perspectiva sobre arquitetura.

## A solução

Então vamos falar sobre o C4 Model.

O C4 foi criado por Simon Brown, com uma ideia genial: "e se tratássemos nossos diagramas de arquitetura como tratamos o Google Maps" [^2]
[^2]: https://c4model.com/introduction#maps-of-your-code

No Google Maps, você pode ver o mapa-múndi, dar um zoom para ver um país, depois uma cidade, uma rua e até a fachada de um prédio. Cada nível de zoom te dá um tipo diferente de informação, sem te sobrecarregar."

## Demo

> [!note] Demonstração
> 1. Comece com o mapa-múndi.
> 2. Dê um zoom rápido no Brasil.
> 3. Depois em uma cidade (ex: São Paulo).
> 4. Termine em uma avenida conhecida (ex: Av. Paulista).
>    
> Vejam, níveis diferentes de zoom para perguntas diferentes.

## Comunicação

O C4 faz exatamente isso para a sua arquitetura de software.

A ideia não é criar um tipo de notação nova, mas prover um conjunto de abstrações e uma forma de estruturar os diagramas para contar uma história coerente sobre o sistema. Isso nos ajuda a pensar o publico que vamos apresentar aquele desenho e qual história vamos precisamos contar para eles.

Percebem que sempre foi uma questão de comunicação?

## Abstração vs Notação

E antes de entrarmos nos 4 níveis de abstração, eu vou deixar isso para próxima aula, deixa eu pegar esses minutos e falar sobre abstração vs notação.

Eu falei isso algumas vezes aqui e não sei se é claro para você.

### **Notação (diagram notation)**

Notação, é o mais fácil e simples explicar.

Notação é a parte estética: caixas, círculos, cores, linhas pontilhadas. É _como_ você desenha.

Ou seja, é o conjunto de simbolos e regras que você vai estabelecer para desenhar os seus sistemas e as relações entre eles.

Todas as questões estéticas do desenho é o que chamamos de notação. 

### **Abstração**(*diagram abstraction*)

Já a Abstração é o significado por trás do desenho.

É o processo de simplificação de sistemas complexos em partes que nos ajudam a entende-lo melhor.

É o que você faz no seu dia a dia, você da nome para os seus serviços, você da nome para as integrações e coloca isso em um desenho, que representa aquele conjunto de funcionalidades reais. 

Dentro das abstrações que você tem ai, você pode chamar por exemplo nos seus desenhos, os clientes de "compradores" ou "vendedores", os componentes de "microserviços", as interface vocês pode chamar de "frontend" ou "microfrontend" ou "site".

Ou seja, abstração é uma série de termos que você usa para chamar as coisas, ou seja, para abstrair aquele recurso do seu sistema.

### C4 model is Abstraction-first

E aqui está o ponto mais importante: muitas ferramentas focam na **Notação**, você vai ver logo de cara que o C4 model é *abstraction-first*, ou seja, ele se preocupa primeiro com _o quê_ estamos representando, qual o vocabulário que vamos usar. A parte de 'como desenhar' fica em segundo plano, e é por isso que ele é tão flexível e poderoso. [^3]
[^3]: https://c4model.com/abstractions#abstractions
Você vai ver que você pode aplicar o C4 Model em qualquer ferramenta usando qualquer cor ou forma, não precisa parecer com os desenhos do site do C4 Model. [^4] Você vai conseguir entregar valor apenas aprendendo esse conjunto de abstrações.
[^4]: https://c4model.com/diagrams/notation

## Seu próximo passo

Agora que você entendeu o problema que o C4 Model resolve, está na hora de partir para as **Abstrações do C4 Model**! 

**Mini Desafio**: Antes de continuar, pega os desenhos de arquitetura da sua empresa e analisa: eles têm consistência de notação? Misturam níveis de abstração? Comenta suas descobertas nos comentários ou no WhatsApp - quero saber o que você encontrou!

Na próxima lição vamos mergulhar nos 4 níveis de abstração que tornam o C4 Model tão prático e poderoso.

Te vejo lá!





