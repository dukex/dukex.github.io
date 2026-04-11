---
layout: post
title: Minicurso C4 Model - 2.1 Abstrações Principais (Contexto, Container, Componente, Código)
date: 2026-04-10 23:10
categories: [architecture, c4model, tech]
---

Se você preferir pode [assistir essa aula no Youtube](https://youtu.be/FugyeeVBVzs)

Olá e bem-vindo(a) à nossa aula sobre as abstrações principais do C4 Model!

Na aula anterior, estabelecemos a importância da abstração e da notação. Falamos sobre a genialidade da metáfora do Google Maps: a capacidade de dar zoom para ver o mesmo sistema com diferentes níveis de detalhe.

Hoje, vamos conhecer exatamente quais são esses níveis de zoom. Vamos desvendar os 4 "Cs" que formam o coração do C4 Model: Contexto, Container, Componente e Código. Para cada um deles, vamos responder a quatro perguntas essenciais: 

- Qual o seu propósito? 
- Para quem ele se destina? 
- Quais elementos ele mostra? 
- E qual o seu foco?

Vamos começar pelo nível mais alto, a visão do helicóptero.

## Nível 1: Contexto (System Context)

O Diagrama de Contexto é o ponto de partida. Ele mostra a "foto grande", o sistema como uma única caixa preta e como ele se encaixa no mundo.

**Propósito**: Mostrar o escopo do sistema e suas interações de alto nível com o mundo exterior. Não queremos saber como o sistema funciona, apenas o que ele é e com quem ele interage.

**Audiência (Público)**: Todos! Especialmente stakeholders não-técnicos, como Gerentes de Produto, Executivos, Analistas de Negócio e até mesmo outras equipes de desenvolvimento que precisam entender o que o seu sistema faz, sem os detalhes.
    
**Elementos**:
- Pessoas: Os atores que interagem com o sistema (ex: "Cliente", "Administrador").
- O seu Sistema: Representado como UMA ÚNICA caixa no centro do diagrama.
- Sistemas Externos: Outros sistemas com os quais o seu sistema se comunica (ex: "API do Gateway de Pagamento", "Sistema de E-mail").

**Foco**: O foco é no valor de negócio e nas relações, não na tecnologia. Detalhes como protocolos de comunicação (HTTPS, gRPC) ou tecnologias de banco de dados são omitidos intencionalmente.

(Analogia: É o mapa-múndi. Você vê os países e as fronteiras, mas não as cidades ou estradas.)

## Nível 2: Container

Agora, damos o primeiro zoom. Abrimos a caixa do nosso sistema para ver as principais "peças" que o compõem.

**Propósito**: Mostrar a arquitetura de alto nível do sistema. Como as responsabilidades são divididas entre as partes executáveis ou armazenáveis que formam o sistema.

**Audiência**: Principalmente público técnico. Desenvolvedores, arquitetos, equipe de DevOps/SRE. Pessoas que precisam construir, implantar e operar o sistema.

 **Elementos**:
- Containers: As principais "peças" do seu sistema. Um container no C4 não necessairamente um container Docker. Pode ser:
    - Uma aplicação web (ex: "Single-Page Application em React").
    - Uma API (ex: "API de Pedidos em Java").
    - Um banco de dados (ex: "Banco de Dados PostgreSQL").
    - Um serviço de mensageria (ex: "Consumidor do Kafka").
    - Um aplicativo mobile, um shell script, etc.
- Tecnologias: As principais escolhas tecnológicas são mostradas aqui.
    
**Foco**: O foco é na estrutura tecnológica de alto nível e na comunicação entre os containers. Mostramos como eles se conectam (ex: "API faz chamadas para...", "Serviço lê/escreve no banco...").

(Analogia: É o mapa do país. Agora você vê as principais cidades e as rodovias que as conectam.)

## Nível 3: Componente (Component)

Damos mais um zoom, desta vez em um único container. Por exemplo, como a "API de Pedidos" é organizada por dentro?

**Propósito**: Mostrar os principais blocos de construção lógicos ou módulos dentro de um container. Ajuda a entender como um pedaço do sistema é projetado antes de mergulhar no código.

**Audiência**: Principalmente desenvolvedores que estão trabalhando diretamente naquele container específico.

**Elementos**:
- Componentes: São agrupamentos lógicos de código. Frequentemente, eles mapeiam para um conjunto de classes ou módulos que trabalham juntos para cumprir uma responsabilidade. (ex: OrderController, PaymentService, OrderRepository, StripeGatewayClient).

**Foco**: O foco é no design de software e na colaboração entre os componentes para implementar uma funcionalidade. É o mapa das responsabilidades dentro de um container.

(Analogia: É o mapa da cidade. Você vê os bairros e as principais avenidas que os conectam.)

## Nível 4: Código (Code)

Este é o nível de detalhe máximo. Raramente desenhamos este nível, mas é importante saber que ele existe.

**Propósito**: Mostrar como um componente individual é implementado.

**Audiência**: Apenas os desenvolvedores que estão escrevendo ou revisando aquele código específico.

**Elementos**: O próprio código! Diagramas de classe UML, diagramas de sequência, ou qualquer outra ferramenta que ajude a entender um trecho complexo de código.

**Foco**: O foco é nos detalhes de implementação, algoritmos, estruturas de dados e padrões de projeto específicos. Na filosofia do C4, este nível é melhor servido pelo próprio código-fonte, bem escrito e organizado.

(Analogia: É o Street View. Você está na rua, vendo os detalhes da fachada de um prédio.)

## Seu próximo passo

Então, hoje nós vimos os 4 níveis de abstração do C4:

- Contexto: A visão do negócio.
- Container: A visão da arquitetura e tecnologia.
- Componente: A visão do design do software.
- Código: A visão da implementação.

Perceba como cada nível conta uma história diferente para um público diferente. É esse o superpoder do C4 Model!

Aqueles desenhos que você pegou na aula passada, seu desafio agora é ver, ele mistura os contextos? Tem componente com visão de contexto? 

Na nossa próxima aula, vamos falar sobre Notação e Boas Práticas. Agora que já sabemos o que desenhar em cada nível, vamos aprender as melhores formas de como desenhar para garantir que nossos diagramas sejam claros, consistentes e fáceis de entender.

Te vejo lá!
