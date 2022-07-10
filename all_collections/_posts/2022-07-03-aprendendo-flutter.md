---
layout: post
title: Aprendendo Flutter
date: 2022-07-03 22:26
categories: [flutter, dart, project, opinion, developers]
---

Se você encontrou isso aqui em busca de um tutorial de _Flutter_ ou _Dart_, não vai ter, mas já que chegou não precisa sair. 

Meu primeiro aplicativo _Flutter_ está saindo, foram duas semanas bem intensas, principalmente por colocar duas coisas na minha cabeça:

1. **não fazer um toy project**, _toy project_ é aqueles projetos que muitos desenvolvedores fazem para aprender uma linguagem ou framework, quase sempre são projetos bobos com escopos pequenos e bem definidos que é fácil de largar, eu mesmo acumulei centenas nesses últimos 10 anos.
2. **usar os padrões de projeto que profissionais usam**, mesmo que seja mais complicado no começo, é uma sopa de letras no começo, com seu valor, mas deixa o aprendizado mais travado.

Talvez uma coisa leve a outra, não fazer um _toy project_ significa que esse projeto precisa entregar valor e para entregar precisa ter uma idéia minimamente estruturada por trás do desenvolvimento, minha idéia é o projeto ir para as lojas, ser usado e o dinheiro cair na minha conta. Nada contra os _toy projects_ eu entendo o valor dessa categoria de projeto no aprendizado, mas eu gosto de desafios.

Com isso, usar os padrões que profissionais usam me pareceu muito necessário, para além do meu aprendizado, o projeto precisa escalar, adicionar nova funcionalidade precisa ser fácil, os testes unitários precisam ser rápidos e por aí vai. Eu poderia entregar valor, ir para as lojas, mandar o link para minha mãe, escrever aqui os desafios do aprendizado e ser feliz escrevendo todo meu aplicativo no `lib/main.dart`, mas eu gostaria de aprender a programar em _flutter_ e _dart_ como se eu fosse trabalhar com isso.

Por falar de mãe, abrindo um parenteses rápido aqui, você conhece _the Mom Test_? Se não, é um livro simples de ler, pequeno e ajuda quando queremos validar idéias, normalmente nessa fase dos projetos fazemos as perguntas erradas e criamos software genial que ninguém quer usar, busca lá no YouTube "_the Mom Test Rob Fitzpatrick_" com certeza vai ter alguns bons resumos do livro, inclusive o próprio Rob está por lá, da para consumir da fonte.

Voltando ao _Flutter_! Na real, antes disso, sobre a minha idéia! Daria para escrever um post inteiro, mas é um aplicativo simples, fazer tracking de exercício físico.

Corrida? Caminhada? Bicicletinha no parque? Nada disso! É chover no molhado falar que exercício físico é bom para saúde, tem centenas de aplicativo sobre isso, você deve ter usado e desistido de alguns, o projeto que eu, meu irmão e minha irmã estamos fazendo é para quem quer mudar de vida e gostaria de contar com ajuda de um profissional para isso.

Se você já foi na academia, provavelmente deve ter desistido algumas vezes também, deve ter recebido um **treino** meia boca de um profissional que pode muitas vezes até ser bem qualificado, mas não consegue atender todo mundo da forma necessária para entregar grandes resultados, infelizmente as academias pagam mal esses profissionais, quando não ensinam um atendente qualquer a passar treino no olhômetro.

Antes de continuar, eu tenho que falar que eu sou um gordo feliz, estou sendo convencido, pelo meu irmão, personal trainer, a puxar ferro diariamente em troca de uma vida mais saudável, Deus queira que ele consiga, afinal sou um gordo consciente também.

E qual o problema que queremos resolver? Acreditamos que para as pessoas comuns, que não é, como meu irmão e algumas outras, que estudam sobre o corpo humano, que sabe de cabeça a ordem da queima de fontes de energéticas do corpo ou sobre as enzimas necessárias para digerir certos carboidratos (eu não esse tipo, to buscando no Google aqui, eu nem sabia que tem mais de um carboidrato). Para as pessoas comuns, acreditamos que os **dados são os melhores amigos dos resultados**, por isso queremos ajudar os **profissionais** na coleta e interpretação dos dados de saúde e, claro, do treino para então colaborar na transformação da vida dessas pessoas. A parte física é um aspecto dessa transformação, como equipe atualmente o que temos mais capacidade de ajudar, mas estamos pensando nos aspectos mentais, e, porque não, espirituais também.

E os tais padrões de projeto que profissionais usam? Cada vez que eu escrevo isso eu acho essa frase mais estranha. 

Os padrões são vários, alguns bem conhecidos, o meu papel nessas semanas foi entender como isso é aplicado na estrutura do aplicativo, usando _dart_, e seus motivos.

O _BLoC_ foi um dos primeiros que apareceu fazendo a busca "_Flutter project pattern_", bem documentado e simples de usar, mas precisa realmente usar para entender com clareza, os _Getting Started_ dão uma visão simplória da beleza dessa biblioteca. 

Eu já fui logo colocando ele no projeto e comecei a fazer aquela bagunça, a tentativa de copiar estruturas de projetos que eu conhecia (_Rails_, _Django_, alguns padrões de projetos _React_) até que foi uma boa, mas faltava algo, um pouco mais de estudo e todos os desenhos que vi me lembravam do famoso _Clean Architecture_, fui entender formas de aplicar isso no _Flutter_, e as coisas foram ficando claras, vou colocar a estrutura final que adotei logo abaixo.

Eu sei, e você também deveria saber, que não tem bala de prata, mas já tive que fazer algumas refatoração, pois a estrutura de dados está mudando bastante na medida que eu e meus irmãos entendemos melhor o que estamos fazendo, são duas semanas para criar uma empresa, eu ainda não contei, mas estou usando o _Airtable_ como API, se você acha doideira então entendeu exatamente o que quero dizer, nessas o _Clean Architecture_ ajuda muito na separação logicas de cada parte do aplicativo.

O _Clean Architecture_ não é famoso atoa, uma coisa fantástica nele é ajudar a postergar algumas decisões, usar o _Airtable_ é muito isso, eu lembro de uma _talk_ do Uncle Bob, sobre ele ter postergado o uso do banco de dados por meses, eu estou postegando a criação de um _Backend_. Com o _Airtable_ eu tenho _interface_ visual amigável para quem não é técnico, com uma _API HTTP_ satisfatória para consumir meus dados. 

Minha estrutura de diretório agora se parece com essa:

```
lib\
    features\[name]\
        data\
            models\
            repositories\
            sources\
        domain\
            entities\
            repositories\
            usecases\
        presentation\
            bloc\
            screens\
            widgets\
```

O que você achou?

Eu foquei em escrever bastante testes, estou com 96% de cobertura de teste, os 100% não chegou ainda, um dos motivos é devido a uma biblioteca que estava com problema de _null safety_, eu preferi trazer ela para dentro do projeto, apesar de remover uns 60% do código que não iria usar, ainda tem casos de uso, não utilizados pelo meu aplicativo que ainda não testei.

Por falar em biblioteca, algumas bibliotecas essenciais nesse processo foram:

- mochito
- flutter_bloc
- collection
- get_it
- dartz
- equatable

Todas elas são opcionais em qualquer projeto, mas foram essências para mim, no meu projeto, por tornar o _dart_ mais amigáveis dado minhas experiências anteriores.

E por falar ainda mais em biblioteca, um dos meus primeiros instintos foram adicionar o Firebase no projeto, pensei que iria adiantar bastante coisa para mim, mas como eu disse eu estou postergando muitas decisões, o uso do Firebase é uma delas, com certeza vou usar o Firebase Auth, mas ainda não foi necessário criar um _login_.

A coisa mais estranha para mim, nem é o _dart_ é a forma de construir tela, me pareceu nesse primeiro contato que as telas são quase sempre orientadas as `Column` e `Row`, o que é um jeito sofisticado de construir tela em tabelas, para quem viveu os layouts em tabela da Web 1.0 sabe do que eu estou falando, eu entendo que não é muito diferente do _flexbox_ do _CSS_, mas ainda estou acostumado a pensar nas posições dos elementos de uma forma um pouco diferente.

Percebi que peguei o fim da transição do _null safety_ e o começo do Material Design 3, minha vontade de usar essa ultima novidade deixaram algumas coisas meias tortas para dizer o mínimo. 

---

Sumarizando, ou tentando, aprender com _constraints_(restrições, mas em inglês fica mais bonito) é a minha forma de aprender preferida, eu demorei para entender isso na minha vida. Criar uma idéia real e que o desenvolvimento do aplicativo fosse feita com um rigor profissional, foram as restrições que eu mesmo me coloquei, e no processo aprender a criar um aplicativo em um framework novo, numa linguagem estranha e seus padrões interessantes, sem contar, por que eu não contei, que trabalhar com meus irmãos está sendo bem interessante, eles ainda não sabem, mas eu estabeleci restrições para eles, e eles estão aprendendo muito nesse processo também.

Por enquanto acredito ser isso. E você, o que me conta? To la no twitter em [@emersonalmeidax](https://twitter.com/emersonalmeidax) ou LinkedIn em [linkedin.com/in/dukex](https://www.linkedin.com/in/dukex/)

Abraços
