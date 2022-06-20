---
layout: post
title: Tenha preguiça, escreva menos códigos 
date: 2020-11-12 13:31:00
categories: [thinking, opinion, developers]
---

Se você não é um desenvolvedor de _software_ provavelmente não vai entender esse texto, mas mesmo assim, leia-o! Depois você poderá usar, de forma aleatória, algumas frases escritas aqui com as pessoas que trabalham com isso.

Aviso dado, vamos ao texto.

Imagine que você precisa, por exemplo, comparar ou manipular uma _string_ que segue o formato [_semver_](https://semver.org). Em Ruby, algo como `Gem::Version.new('1.2.3')` será mais eficiente, testado e confiável para trabalhar com comparação ou manipulação de versão. Isso significa que nenhuma linha de código que lida com o _semver_ será escrita. O _Ruby_ já te dá essa funcionalidade.

Não penso que seja um absurdo alguém pensar em escrever códigos mirabolantes para lidar com isso, mas quem faz, faz por não conhecer sua própria ferramenta de trabalho ou por ter tempo de sobra disponível. Esse exemplo é bem simples, mas é fácil transpor ele para diversos casos do dia a dia. Deixa eu ser mais claro sobre isso, escrever códigos que alguma biblioteca ou a própria linguagem te entrega não é necessariamente ruim do ponto de vista do quanto se aprende e do quanto se pode contribuir para o ecossistema em que o código está escrito. Nesse sentido não vejo valor para o produto desenvolvido, mas acredito que de certa forma, é na dialética dessas implementações que surgem bibliotecas ou melhorias em uma linguagem, é claro que existe uma distância grande entre o código que você está fazendo no dia a dia e contribuições _open source_, o que de certo modo é triste.

O problema que quero expor aqui é quando pela falta de preguiça um desenvolver sai escrevendo ou reescrevendo códigos como se não houve amanhã, como o meu exemplo inicial.

É conhecido de muitos a máxima [_O melhor código é o não-código_](https://blog.codinghorror.com/the-best-code-is-no-code-at-all), em inglês fica melhor essa frase, em português me sinto um tanto deleuziano traduzindo dessa forma, por falar em filosofia, daria para escrever outro post sobre “a metafísica do não-código, ou, como os heróis do dia a dia, aqueles que trabalham com o não-código, não são reconhecidos”, mas fica para outra hora.

Voltando. O grande Jeff Atwood, criador, dentre outras coisas, do Stack Overflow, [nesse artigo](https://blog.codinghorror.com/the-best-code-is-no-code-at-all), escreve algo interessante, que cito em uma tradução minha:

> Como um desenvolver de software, você é o seu pior inimigo. Quanto mais cedo você perceber isso, melhor você será.

Resumindo, você está sempre se fudendo, e fudendo com seus amigos de trabalho, enquanto eles se fudendo, fode você também. Uma verdadeira suruba sodomita com autoflagelação.

Bizarro, desculpa por parecer deleuziano novamente, mas essa situação, às vezes constrangedora, de estar fazendo algo que não se sustentará até a próxima funcionalidade, acontece todos os dias. É um ciclo de frustração, pois você sabe que escrever mais código significa que, em breve, alguém ficará chateado com ele, e esse alguém pode ser você.

A solução realista, afinal muitas vezes somos pagos para escrever código – nem sempre dá para ser o herói do não-código – parece ser estudar. Me desculpe novamente, dessa vez pelo clichê.

Depois que comecei programar demorei para ter um mentor, então quando tive meu primeiro eu já escrevia muito código por aí. A minha primeira surpresa, na qual nunca vou esquecer, era a capacidade do meu mentor de escrever códigos maravilhosamente pequenos e de uma forma elegante, isso era evidente nos _reviews_ que ele fazia, eu gastava 20 linhas e ele reescrevia em 5, para ser conservador aqui. Isso me intrigava bastante. Nem sempre menos linhas é melhor que mais, por exemplo, quando menos linhas significar perder a legibilidade do código, mas esse não era o caso das implementações do meu mentor.

Com tempo fui entendo a situação, eu sabia programar. Eu sabia colocar uma série de _ifs_ e _elses_ para criar estruturas lógicas e fazer o programa chegar onde deveria. O problema era que eu só tinha um martelo, então tudo para mim era prego. A famosa _law of the instrument_.

> I call it the law of the instrument, and it may be formulated as follows: Give a small boy a hammer, and he will find that everything he encounters needs pounding.
> 
> Abraham Kaplan, The Conduct of Inquiry

Tem um livro chamado [AntiPatterns: Refactoring Software, Architectures, and Projects in Crisis](https://amzn.to/2VWZE1J) que fala sobre o _anti-pattern_ _Golden Hammer_, ele é associado muito com as ferramentas, linguagens, banco de dados, padrões, etc, que escolhemos para resolver nossos problemas.

Em desenvolvedores menos experientes isso pode ser aplicado principalmente ao modo que escrevemos códigos, quando encontramos um padrão que seja interessante temos uma tendência a querer aplicá-lo em todos os lugares, por exemplo, um _refactor_ que deu certo em um contexto, vamos aplicando ele em todos os outros contextos, ou quando um jovem programador, acostumado a escrever de forma procedural aprende as maravilhas da orientação a objeto, e tudo para começa a girar em torno de criação de classes.

Voltando à minha intriga em relação ao meu mentor de escrever códigos melhores que o meu, foi quando comecei a estudar mais as ferramentas que eu usava, e as que eu não usava, que passei a escrever menos código e minhas soluções iam ficando cada vez melhor, pois cada vez mais ia diminuindo um ciclo de solucionar problemas já resolvidos.

Foi quando conheci _Ruby_ que meus códigos em _PHP_ ficaram melhores, foi quando li o [Clean Code](https://amzn.to/2PV2T64) que comecei a pensar na organização do meus projeto de outra forma.

Esse é um processo que nunca acaba, conforme vamos tomando consciência das ferramentas, das práticas, dos padrões, menos tempo passamos escrevendo códigos, e não é sobre escrever mais rápido ou mais lento, é sobre escalabilidade, sobre clareza, sobre menos _bugs_, sobre beleza, e por aí vai.

Ter a preguiça de escrever código, é a desconfiança de que alguém já resolveu o seu problema, e com certeza alguém na década de 70 ou 80 já escreveu um livro sobre isso. Em empresas com múltiplas equipes às vezes a equipe ao lado resolveu seu problema.

Tenha preguiça, ou pelo menos tenha a desconfiança de que você não será o gênio da história da computação que resolverá aquele problema, alguém possivelmente já resolveu, então seja o herói que entrega solução, e que além de gerar valor, não aumenta a carga de manutenção no software.

Eu gostaria de terminar da mesma forma que o Jeff Atwood terminou o texto dele:

> Se você ama escrever código, ama verdadeiramente escrever código, você vai amar o suficiente para escrever o mínimo possível.

Abraços
