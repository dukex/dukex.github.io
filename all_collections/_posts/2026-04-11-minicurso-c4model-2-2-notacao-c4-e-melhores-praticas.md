---
layout: post
title: Minicurso C4 Model - 2.2 Notação C4 e Melhores Práticas
date: 2026-04-12 01:52
categories: [architecture, c4model, tech]
---

Olá, e bem-vindo(a) de volta! Na última aula, mergulhamos fundo nas 4 abstrações do C4 Model: Contexto, Container, Componente e Código. 

Agora que já sabemos O QUE desenhar em cada nível, vamos focar em COMO desenhar de uma forma que seja clara, consistente e universalmente compreendida.

Nesta aula, vamos cobrir dois tópicos cruciais: 

1. **A Notação**, que é o nosso vocabulário visual
2. **As melhores práticas**, que são as regras estratégicas do jogo.

### Independencia de Notação

Um ponto importante: o C4 Model não é um padrão rígido como a UML. Ele preza pela simplicidade e flexibilidade. O que vou mostrar aqui é um conjunto de recomendações e convenções que funcionam muito bem na prática.

Mas para ficar claro a questão da independencia de notação, veja os 3 desenhos abaixo, os 3 são sobre o mesmo sistema, e os 3 estão usando C4 Model para comunicar a mesma coisa, porém com notação diferentes.                                                                                                                                                                                                                                                                                                                
|                                            |                                            |     
| ------------------------------------------ | ------------------------------------------ | 
| ![](https://emersonalmeida.wtf/assets/images/2.2/notation_independence_example_2_0.png) | ![](https://emersonalmeida.wtf/assets/images/2.2/notation_independence_example_2_1.png) |   
| ![](https://emersonalmeida.wtf/assets/images/2.2/notation_independence_example_1_0.png) | ![](https://emersonalmeida.wtf/assets/images/2.2/notation_independence_example_1_1.png) |
| ![](https://emersonalmeida.wtf/assets/images/2.2/notation_independence_example_3_0.png) | ![](https://emersonalmeida.wtf/assets/images/2.2/notation_independence_example_3_1.png) |

Explicado isso, vamos fazer uma escolha por uma notação aqui, vamos começar pelos blocos de construção dos nossos diagramas.

### Person

Representa um, ou mais, usuário humano do seu sistema (um ator).

**Como desenhar**

Geralmente, um retangulo com um circulo na parte central acima.

Vamos colocar o nome do usuário, a indicação `[Person]` para identificar esse component como person, e opcionalmente uma descrição dele.

![](https://emersonalmeida.wtf/assets/images/2.2/notation_person.png)

### Software System

Um sistema de software de interesse, seja o seu ou um externo.

**Como desenhar**

Uma caixa, geralmente com cantos arredondados ou retos. É importante diferenciar visualmente o seu sistema dos sistemas externos, externo aqui não é externo a sua empresa, mas externo do seu foco de desenho, é comum diferencia-los com cores de fundo diferentes, geralmente deixando em cinza os sistemas externos.

Vamos colocar o nome do sistema de software, a indicação `[Software System]` para identificar ele como sistema de software, e uma descrição do que ele faz.

![](https://emersonalmeida.wtf/assets/images/2.2/notation_container.png)
    
### Container
    
Sãos as partes executáveis ou armazenáveis do seu sistema (uma API, um banco de dados, uma fila, etc.).

**Como desenhar**: 

Uma caixa, mas que fica dentro da fronteira do seu Sistema de Software. 

É comum usar algumas formas para deixar ele mais representado, exemplos, um cilindro em pé para banco de dados, um "celular" para app, ou "browser' para website, etc.

Vamos colocar o nome do container, a indicação `[Container: (tech)]`, para identificar ele como um container, e uma descrição do que ele faz.

É importante no lugar de `(tech)` colocar a tecnologia do container, isso é altamente recomendado dentro da metodologia do C4 Model.

![](https://emersonalmeida.wtf/assets/images/2.2/notation_container.png)

### Component

![](https://emersonalmeida.wtf/assets/images/2.2/notation_component.png)

### Relacionamento

São as conexões entre os nossos outros componentes, podem ser chamadas de API http, rpc, podem ser chamadas de funções, etc, dependendo da camada vamos ter a especificação da tecnologia do relacionamento.

Como desenhar: Uma linha tracejada (ou não) com o nome da relação, em algumas camadas usamos também abaixo do nome a tecnologia dessa relação. 


![](https://emersonalmeida.wtf/assets/images/2.2/notation_relationship.png)

### Não precisa ser artista

Percebeu como é facil e simples a parte de notação? Não precisa ser um artista. Quando formos para a parte prática vai ficar ainda mais fácil, eu te prometo isso.

Criamos formas simples e reutilizamos para não perdemos tempo "Desenhando".

O grande ponto aqui é como fazemos isso de forma eficaz!

### Recomendações

Eu queria deixar com vocês 7 pontos espeficicamente sobre notação:

1. **Simplicidade**: Use um conjunto mínimo de formas e cores. O objetivo não é criar uma obra de arte, mas um diagrama fácil de ler. Menos é mais.
2. **Consistência**: Seja consistente! Se você usou uma caixa azul para representar um banco de dados em um diagrama, use a mesma caixa azul em todos os outros. A consistência cria um atalho mental para o leitor. Com isso você vai perceber que os seus desenhos as pessoas vão ter facilidade de ler
3.  **Rótulos claros**: Cada elemento e cada seta precisam de um nome e uma breve descrição. Uma seta não deve dizer apenas "Usa". Ela deve dizer **o quê** e **como**.
    - Exemplo Ruim: Sistema A -(Usa)-> Sistema B 
    - Exemplo Bom: Sistema A -> Sistema B (Envia notificação de pedido via \[JSON/HTTPS\])
      Da trabalho, mas vale a pena
4. **Título e legenda**: Todo diagrama precisa de um título claro (ex: "Diagrama de contexto do Sistema de Pedidos") e, se necessário, uma legenda explicando as cores ou estilos de linha (ex: "Linha Pontilhada = Mensagem Assíncrona").
   Isso é quase sempre deixado de lado.
5. **Indicadores de tecnologia**: Nos níveis de Container e Componente, é útil adicionar o nome da tecnologia principal entre colchetes. Ex: API de Pedidos [Java], Banco de Dados [PostgreSQL]. Isso ajuda demais na implementação, principalmente se a empresa está em alguma transição ou mais comum se tem mais de uma tecnologia
6. **Direcionalidade**: As setas devem ter um sentido claro. Elas mostram quem inicia a comunicação e quem a recebe. Parece bobo, mas precisa ficar claro, eu estudei algumas formas de descrever arquitetura, e tem dois pontos que eu gostaria de compartilhar, a primeira é que não é comum fazermos a ida e a volta da comunicação no C4 Model, exemplo um request HTTP indo para o sistema e um outro relacionamento voltando com a response, podemos complementar o nosso desenho com outras formas de descrever isso, exemplo um diagramma de sequencia que possibilita cenarios de erros e tudo mais, não é o cado do C4 Model, e o segundo ponto é sobre Consumers (em arquiteturas com filas ou eventos), a direção aqui é sempre da fila ou topico ou broker para o consumer, e não o contrario, existe algumas notações, se eu não me no archimate, que é invertido, aqui mantemos sempre a direção da comunicação, para deixar o fluxo mais fluido. 
7. **Não se prenda**: Use formas e cores que melhor podem representar o que você quer comunicar, as vezes, um icone do S3 pode representar melhor um container do que uma caixa, se faz sentido e está dentro das recomendações acima, faça! - Muitas pessoas ficam presas na notação do site do C4 Model, ou na notação da empresa antiga, eu já vi gente defendendo que tinha uma notação certa! a do C4 Model, qual? não existe, por exemplo, você não acha que um diagrama que a cor principal é a cor da empresa não vai ter um apelo e uma identidade melhor para as pessoas dessa empresa? Busca um bom constraste e absorve essa identidade para seus diagramas, só lembre das recomendações, Simplicidade e Consistência.

Vou deixar nos materiais um checklist detalhado e fácil de validar um bom diagrama, vamos usar ele nas aulas práticas.


## Melhores Práticas - A estratégia por trás do diagrama

Ter uma boa notação é importante, mas a estratégia de como você cria e usa os diagramas é o que realmente faz a diferença.

Então tenha em mente:

1. Pense na Audiência Primeiro (Audience First): Antes de desenhar uma única caixa, pergunte-se: "Para quem é este diagrama?". A resposta definirá o nível de abstração (Contexto, Container ou Componente) que você deve usar.
2. Conte uma História (Tell a Story): Um bom diagrama não é só um amontoado de caixas e setas. Ele conta uma história sobre como uma funcionalidade é entregue ou como o sistema resolve um problema. Organize os elementos para que essa história flua de forma lógica.
3. Comece pelo Nível Mais Alto (Start High-Level): Eu já tive varias experiencias onde travei em qual eu começo, ta claro as vezes o nivel mais baixo, mas a dica é Sempre comece pelo Diagrama de Contexto (Nível 1). É a forma mais fácil de definir o escopo e garantir que todos entendam o quadro geral antes de mergulhar nos detalhes técnicos.
4. Itere e Refine (Iterate and Refine): Seu primeiro rascunho não será perfeito. Desenhe, peça feedback, refine. Use ferramentas como o Excalidraw para rascunhos rápidos e colaborativos antes de formalizar.
5. Mantenha Atualizado (Keep it Up-to-Date): Este é o maior desafio de todos. Diagramas manuais ficam obsoletos rapidamente. A melhor prática definitiva é tratar sua arquitetura como código. E é exatamente isso que vamos explorar no módulo avançado sobre Structurizr, onde você aprenderá a gerar seus diagramas a partir do código, garantindo que eles nunca mais fiquem desatualizados.

## Seu próximo passo

Agora que você dominou a **Notação C4 e entendeu as Melhores Práticas**, está na hora de partir para a **Mão na Massa**!

Nos investimos um tempo aqui, falando de teoria e praticas, isso é importante, se precisar reveja, pergunte.

**Mini Desafio**: Antes de continuar, abra o Excalidraw e faça um rascunho de um sistema simples aplicando a notação que aprendemos. Use as 7 recomendações como checklist. Tira uma foto e posta no grupo - quero ver sua criatividade o seu empenho!

No próximo módulo vamos começar a modelar o nosso "Sistema de Pedidos" do zero, usando o Excalidraw para aplicar tudo o que aprendemos até aqui.

Te vejo lá!



































