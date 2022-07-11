---
layout: post
title: As rotas do flutter 
date: 2022-07-03 22:26
categories: [flutter, dart, project, developers]
---

### Eu continuo aprendendo

No meu post anterior falei [sobre estar aprendendo _Flutter_](/aprendendo-flutter), meu jeito de aprender é intenso. Meu aplicativo vai para loja essa semana, em beta fechado por enquanto, e nessa altura projeto eu fico pistola e penso em reestruturar tudo.

Eu me sinto muitas vezes como os desenvolvedores iniciantes que sou mentor, meu perdido, olhando para o lado errado das coisas e acreditando que as coisas aconteceram magicamente, a diferença é que estou ciente e sempre penso "Não existe mágica, deve ter um bom motivo para acontecer".

Não sei se já falei, mas eu **odeio** _'Getting Started'_, _'Getting Started'_ são tutorias normalmente para iniciante se familiarizar com uma tecnologia. Documentar é difícil e se o que temos em tecnologia em relação à documentação fosse aplicado aos jogos, você ficaria nos tutoriais inicias para sempre. _'Getting Started'_ são importantes, mas nunca são suficientes, e a documentação de mais baixo nível muitas vezes é obscura.

Desde quando eu comecei a aprender _Dart_ e _Flutter_, me deparo com algo que me causa uma certa estranheza, eu não sou um cara de _mobile_, e isso pode fazer total diferença aqui, porque, além disso, eu gosto de _Restful_, principalmente do critério relacionado ao **Resource-based**, se você for de _mobile_ leve em consideração sobre quem escreve. 

### Sobre as rotas

Dado o _disclaimer_ acima, as formas de rotear uma aplicação _Flutter_ é um pé no caso, uma opção é simples de mais, a outra é complexa e exige muito código. Sem contar que nenhuma chega perto de ser **Resource-based**. Mas antes deixa eu tentar tornar as coisas um pouco mais claras aqui.

O _Flutter_ tem dois mecanismos de roteamento, um imperativo o outro declarativo. A seção [_Navigation and routing_](https://docs.flutter.dev/development/ui/navigation) fala exatamente isso com mais detalhes, não vou repetir tudo aqui. 

Para entender a forma imperativa, segue [os tutoriais oficiais do _Navigation_](https://docs.flutter.dev/cookbook/navigation), eles são um _'Getting Started'_ sobre rotas e navegação.

Essa forma é a mais simples, funciona bem em _toy projects_ e projetos mais simples, o _pushNamed_ tenta trazer um pouco de sanidade, mas a forma que os parâmetros são passados leva ela embora, para mim o nome da rota e os parâmetros deveriam estar juntos.

Agora, se você quiser entender a forma declarativa, tem um post chamado [_Leaning Flutter's new navigation and routing system_](https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade) que detalha bem todo o funcionamento, e introduz o _Navigator 2.0_.

Eu li e implementei tudo que está no post, entendi muito melhor a navegação e esse estudo me ajudou bastante para construir o que eu quero apresentar para você logo abaixo, mas infelizmente o _Navigator 2.0_ requer muitas linhas de códigos para, resumidamente, fazer um "botãozinho" funcionar, apesar de ser poderoso é insano, ter que controlar as telas e o _stack_ do aplicativo em um _State_ não é bem o trabalho que vai me dar o resultado de entrega, fico imaginando o tamanho da manutenção nos aplicativos _Flutter_ por ai.

### _Better router_

Após entender bem todo o problema, eu resolvi pensar em como eu gostaria de declarar minhas rotas no _Flutter_, no _Ruby on Rails_ isso é feito de forma tão simples no _routes.rb_, apesar do que está implícito é tão fácil de entender.

```ruby
Rails.aplicativolication.routes.draw do
  get '/', to: "home#index"
  resources :books, only: [:index, :show] do
end
```

Inspirado em tudo que eu li, nas horas que eu passei com o [Leaning Flutter's new navigation and routing system](https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade), e nas formas declarativas que os framework web normalmente nos oferece, resolvi criar uma interface que seria simples e suficiente para minhas necessidades.

Pensando no _Developer experience_ escrever um _State_, _Navigator_, _RouterDelegate_, etc estava fora de questão, minha primeira ideia é melhorar a forma imperativa, que já é bem simples e clara, a segunda sair com um código que poderia ser usado em qualquer projeto, Deus me livre ficar escrever centenas de linhas para tratar rotas em cada projeto que eu fizer. 

```dart
get routes => <String, WidgetBuilder>{
  "/": (_) => const HomeScreen(),
  "/books": (_) => const BookListScreen(),
  "/books/(?<id>.+)": (_) =>const BookScreen(),
  '-catchAll': (_) => const ErrorScreen()
};
```

Ou seja, se for para criar um código complexo de rota eu quero escrever ele apenas uma vez.

Pois foi assim que nasceu o [better_router](https://pub.dev/packages/better_router), um pacote que traz um pouco de sanidade para as rotas e navegação do flutter.

A principal ideia aqui é deixar as rotas e os requisitos para elas executarem, no caso os parâmetros, num mesmo lugar, e assim meus widgets podem navegar sem precisa conhecer os detalhes das telas.

Eu sei que ainda tem muitas coisas para melhorar, o pacote ainda não cobre todos os casos de uso, mas para uma primeira versão está boa demais.

Para _matar a cobra e mostrar o pau_, segue um exemplo de uma pequena aplicação usando o _Better Router_. 

<div style="position:relative;padding-top:56.25%;">
<iframe src="https://dartpad.dev/embed-flutter.html?id=38be63ebd8a6f9f0a209a4f6949080b4&theme=dark&run=true&split=50" style="position:absolute;top:0;left:0;width:100%;height:100%;">.       </iframe>
</div>

Para instalar basta rodar:

```
$ flutter pub add better_router
```

Mais detalhes no [Github do projeto](https://github.com/dukex/better_router)

Por enquanto acredito ser isso. E você, o que me conta? Tô la no twitter em [@emersonalmeidax](https://twitter.com/emersonalmeidax) ou LinkedIn em [linkedin.com/in/dukex](https://www.linkedin.com/in/dukex/)

Abraços.