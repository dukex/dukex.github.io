---
layout: post
title: Minicurso C4 Model - 3.1 Introdução ao Excalidraw
date: 2026-04-24 22:43
categories: [architecture, c4model, tech]
---

Se você preferir pode [assistir essa aula no Youtube](https://youtu.be/ZipUzXJpi9A)

Olá e bem-vindo(a) ao nosso módulo "Mão na Massa"!

Nas aulas anteriores, construímos uma base sólida sobre o C4 Model. Entendemos o porquê, o quê e como desenhar diagramas de arquitetura eficazes. Agora, é hora de transformar essa teoria em prática.

E para começar, vamos conhecer a nossa primeira ferramenta de trabalho: o Excalidraw.

## O que é o Excalidraw?

Se você não conhece o Excalidraw, pense nele como um quadro branco virtual, mas com superpoderes. É uma ferramenta de desenho online, gratuita e de código aberto, que se destaca por sua simplicidade e pela sensação de "desenho à mão".

A simplicidade do Excalidraw, cria constraints, restrições, interessantes, não tem muitas opções ou muitas jeitos de fazer as coisas, o que se alinha muito com o que vimos do C4 Model.

## Por que o Excalidraw para o C4 Model?

Você pode estar se perguntando: "Com tantas ferramentas de diagramação por aí (Miro, Lucidchart, etc.), por que começar com o Excalidraw?". 

A resposta está na filosofia do C4 Model: simplicidade e iteração rápida.

O Excalidraw é perfeito para isso por algumas razões:

1. **Foco na essência, não na ferramenta**: Como eu disse o Excalidraw tem um conjunto limitado de ferramentas (formas, setas, texto). Isso é uma vantagem! Ele te força a focar no que realmente importa – a estrutura e a comunicação – em vez de se perder em opções de formatação complexas.
2. **Velocidade e agilidade**: Com o Excalidraw, você pode esboçar um diagrama de Contexto ou Container em minutos. É a ferramenta ideal para sessões de brainstorming, discussões de arquitetura em tempo real e para validar ideias rapidamente. Nem fazer login você vai precisar.
3. **Sensação de rascunho**: O estilo "desenhado à mão" do Excalidraw envia uma mensagem poderosa: "Isto é um rascunho, uma ideia em andamento. Sinta-se à vontade para criticar e sugerir mudanças". Isso incentiva muito a colaboração e o feedback, que são essenciais para um bom design de arquitetura.
4. **Sem "Lock-in"**: É fácil exportar seus desenhos como imagens (PNG, SVG) ou compartilhar um link para colaboração. Você não fica preso a um formato proprietário.

## Tour Rápido pela Interface (Demonstração)

> Demonstração
> 1. Abra o site excalidraw.com (https://excalidraw.com).
> 2. Mostre a barra de ferramentas superior:
>    - Seleção: Para mover e redimensionar elementos.
>    - Formas: Retângulo, Elipse, Diamante (útil para decisões).
>    - Setas/Linhas: Para criar relacionamentos.
>    - Texto: Para adicionar rótulos e descrições.
> 3. Mostre o painel de propriedades à esquerda:
>    - Cor de fundo, estilo do traço, espessura, etc.
> 4. Demonstre como criar uma caixa simples (um Sistema de Software):
>    - Desenhe um retângulo.
>    - Adicione texto dentro dele: "Sistema de Pedidos\n[Software System]\nProcessa e gerencia pedidos de
clientes."
> 1. Demonstre como criar uma seta (um Relacionamento):
>    - Desenhe uma seta de um ponto a outro.
>    - Adicione texto à seta: "Envia pedido\n[JSON/HTTPS]".
> 2. Mostre a funcionalidade de "Bibliotecas" (Libraries):
>    - Explique que podemos salvar conjuntos de formas para reutilização (como nossos elementos C4).

## Nossa biblioteca C4 no Excalidraw

Vocês viram que é bem simples, mas para facilitar ainda mais o nosso trabalho, eu criei uma pequena biblioteca de componentes C4 para o Excalidraw.\

Ela contém os elementos básicos que vimos na aula de notação (Pessoa, Sistema, Container, etc.) já pré-formatados.

No material de apoio desta aula, você encontrará o arquivo C4-model.excalidrawlib. 

Para usá-lo, basta clicar no ícone da biblioteca no Excalidraw e carregar este arquivo ou você pode criar um novo desenho no Excalidraw com essa library clicando nesse link [colocar link aqui]


## Seu próximo passo

Agora que você dominou o **Excalidraw**, está na hora de partir para a **Definição do Escopo do Sistema**!

**Mini Desafio**: Antes de continuar, pegue os exemplos da aula de notação e tente recriá-los no Excalidraw. Primeiro sem a library, depois instale a library C4 e refaça os desenhos. Isso vai te dar agilidade para as próximas aulas práticas!

Na próxima lição vamos mergulhar no nosso estudo de caso: o "Serviço de Processamento de Pedidos" e definir seu escopo, usuários e principais interações.

Te vejo lá!
