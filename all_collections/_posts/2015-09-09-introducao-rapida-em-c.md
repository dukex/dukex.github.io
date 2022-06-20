---
layout: post
title: Introdução Rápida Em C
date: 2015-09-09 10:18:00
categories: [programming-language, c-lang, tutorial, junior]
---

<blockquote>
  <p>C é uma das linguagens de programação mais populares e existem poucas arquiteturas para as quais não existem compiladores para C. C tem influenciado muitas outras linguagens de programação, mais notavelmente C++, que originalmente começou como uma extensão para C.</p>
  <footer>
    <strong>Wikipedia </strong>
    <cite>
      <a href="https://pt.wikipedia.org/wiki/C_%28linguagem_de_programa%C3%A7%C3%A3o%29" target="_blank" rel="external noopener">Linguagem De Programação C</a>
    </cite>
  </footer>
</blockquote>

Existem muitas vantagens em aprender C, elas variam um pouco para cada perfil de desenvolvedor, minha motivação inicial foi entender melhor sobre a linguagem que está por trás de outras linguagens que eu gosto, no caso [Go](https://en.wikipedia.org/wiki/Go_%28programming_language%29) e [Ruby](https://en.wikipedia.org/wiki/Ruby_%28programming_language%29), agora como o curso que estou fazendo tem coisas em C, essa é uma ótima oportunidade para aprender mais sobre essa linguagem.

### Pré-requisitos e suposições

Eu utilizo um Linux para trabalhar e rodar os códigos abaixo(tenho quase certeza que tudo que escrever aqui funciona em MacOS X e outros linux dado a instalação previa de alguns pacotes), caso você esteja fora dessas plataforma por favor busque algo equivalente para escrever e compilar seu código. Eu utilizo como editor de código o [Vim](https://github.com/LunarVim/LunarVim), ele é o melhor editor que já utilizei, mas eu sei que ele não é para qualquer um, então fique a vontade com seu editor favorito.

### Tipos de dados 

O C é uma **linguagem fortemente tipada**, isso significa que os dados(textos, números, estruturas, etc) tem que obrigatoriamente ter um tipo definido, isso vai ficar claro depois, porém a nível de curiosidade, existem também linguagens fracamente ou dinamicamente tipada e as não tipadas.

O C tem vários tipos de dados, mas para começar vamos focar em 4 tipos básicos, eles são:

- **int** 
  Um dado do tipo int é um inteiro positivo ou negativo que seu valor pode ir de -32768 a +32767. Um exemplo para declaração de um int é a seguinte:
  ```
int a = 10
  ```
- **float** 
  Um dado do tipo float é um número decimal(ponto flutuante) que pode ir de 1.E-36 a 1.E+36, isso significa que um dado do tipo float tem 7 dígitos de precisão. Veja o exemplo:
  ```
float b = 5.2 // 5.200000
  ```
- **double**
  Um dado do tipo double é um número decimal também, igual a um *float*, só que com maior precisão, ele pode ir de 1.E-303 a 1.E+303 o que dá 13 dígitos de precisão.
  ```
double c = 10.0905
  ```
- **char**
  Um dado do tipo char armazena um único caractere, uma letra por exemplo, para quem programa em outras linguagens isso pode parecer estranho no começo, em outras linguagens existe um tipo de dado chamado <em>string</em> que é uma cadeia de caractere, no C uma <em>string</em> é um conjunto de char, veremos isso depois. Por agora vamos declarar um char usando apenas aspas simples(‘), existe uma diferença em usar aspas simples(‘) e aspas duplas(“) mas também veremos isso depois. Vale lembrar que cada char representa um byte.
  ```
char d = 'a' 
  ```

### Declarando variáveis

Nos pequenos exemplos acima já vimos como declarar variável, vamos tentar entende melhor isso agora. De forma simples, uma variável é como um atalho ou um deposito(store) onde você armazenas seus dados, você pode declarar sua variabel e assinar um valor para ele ou declara-la com um valor já definido, veja os dois exemplos no esquema abaixo:

- Declarando e depois assinando um valor

  ```
tipe nome;
nome=dado;
  ```
- Declarando já com um valor assinado</figcaption>

  ```
tipe nome=dado;
  ```

Os dois exemplo são equivalente, <em>tipo</em> no exemplo é a definição de qual tipo aquela variável é ou vai ser, o <em>nome</em> é como você vai referenciar aquele dado depois, em C os pontos e vírgulas(;) no final são obrigatório, isso indica que a declaração terminou, dado isso, vamos rever as definições de variáveis dos exemplos acima: 

```
int a=10;
float b=5.2;
double c=10.5;
char d='a';
```

Poderíamos também escrever o mesmo código declarando as variáveis antes:

```
int a; 
float b; 
double c; 
char d; 

a=10;
b=5.2;
c=10.5;
d='a';
```

Com o código acima temos a variável <strong>a</strong> que quando usada no código ira representar o valor inteiro 10, a variável <strong>b</strong> que séra um decimal com o valor 5.200000, e assim por diante. 

Uma coisa importante é que, todos os nomes de variáveis deve começar com letra ou underline(_), os caracteres especiais como acentos, *, $ %, (, ), @, etc não são permitidos, normalmente se escreve os nomes de variáveis em inglês, isso ajuda a não ter variáveis com nomes ruins tipo, mae, ou cao, e isso também deixa seu código legível para qualquer pessoa do mundo ver e entender o que é importante quando se trabalha com open-source ou em equipes multinacionais.

### Operações Aritmética

Fazer operações aritmética(adição, subtração, divisão e multiplicação) é bem simples em C, então tenho pouca coisa pra dizer, os sinais usados para as operações são os mesmo que usamos normalmente no dia a dia, então vamos usar <strong>+</strong> para adição, <strong>-</strong> para subtração, <strong>/</strong> para divisão e <strong>*</strong> para multiplicação, veja alguns exemplos abaixo: 

```
int receita=1000;
// a variável 'liquido' terá o valor de 700
int liquido=receita-300; 
// a variável 'total' terá o valor de 3300
int total=liquido*4+500; 
// a variável 'j' terá o valor de 1100
int j=total/3; 
```

Para pegar algo mais real e usar com o que aprendemos, imagina que queremos resolver o seguinte problema:

> Calcule o montante resultante da aplicação de R$70.000,00 à taxa de 10,5% a.a. durante 145 dias.

Parece difícil mas vamos com calma, a [formula para calcular montante](http://www.somatematica.com.br/emedio/finan2.php) em juros simples é <code>M=P.(1+(i.n))</code>, então vamos traduzir os dados para C: 

```
int P=70000; // aplicação
float i=10.5/100;  // taxa de juros, vamos dividir por 100,
                   // para termos a mesma unidade de tempo
                   // de n(em ano)
float n=145.0/360; // n por 360, 360 numero de
                   // dias do ano comercial
```


Pronto temos nosso <strong>P</strong>, o <strong>i</strong> e o <strong>n</strong>, agora só precisamos escrever a formula: 


```
float M=P*(1+(i*n)); // O resultado será 72960.414062
```

Com esses exemplos temos alguns pontos para ser visto que podem ter gerado duvidas.

Primeiro o uso dos comentários no código, em C se faz com duas barras(//), as informações a direita das barras não são executadas e são chamados de comentários, comentários spodem ser importante de varias formas, eu utilizo comentários para deixar claro porque uma coisa está sendo feito de uma determinada forma, como é o caso das divisões de <em>i</em> e <em>n</em> nos exemplos, se não tivesse comentando o motivo das divisões fica muito obscuro o por que daquilo; 

Devemos notar também a utilização dos parentes, na nossa conta, se não usar os parentes o compilador do C iria interpretar a operação de acordo com a ordem de precedente dele, veja mais em <a href="https://en.wikipedia.org/wiki/Order_of_operations#Programming_languages" target="_blank" rel="external noopener">operator precedence</a>, e o resultado seria <code>70000.039062</code>, ou seja ele iria fazer, algo como (P <em>1)+(i</em>n); 

Pelo exemplo podemos ver também que tem como misturar os tipos, fazer contas usando <em>int</em> e <em>float</em> com <em>double</em> e até com <em>char</em>, basicamente o que acontece é que o C converte os dados com precisão menor para a precisão mais alta. No exemplo, o P que é um <em>int</em> quando somado com tipo <em>float</em> de i e n, é convertido para float; 

Se usássemos **double** no lugar dos **float** o resultado seria <code>72960.416667</code>, uma diferença pequena, mas que em determinados software podem fazer muita diferença(é o caso de Softwares para o mercado financeiro).

### Como rodar e testar o basico?

Todo programa C tem uma coisa essencial, que é uma função <strong>main</strong>, essa função é o ponto de entrada do seu programa, eu pretendo falar de funções num próximo post, por agora vamos apenas criar uma função main que não retorna nada(<em>void</em>), veja: 


```
void main() {

}
```

Nosso código deve ir entre a abertura e o fechamento das chaves, como abaixo:


```
void main() {
  int P=70000; 
  float i=10.5/100; 
  float n=145.0/360; 

  float M=P*(1+(i*n)); 
}
```

Esse código faz o que esperamos(o que vimos fazer acima), mas ele não mostra nada para nós, o C tem uma função chamada <code>printf</code> que imprime algo na tela, vamos usar o printf para mostrar o resultado ‘M’. 

```
void main() {
  int P=70000; 
  float i=10.5/100; 
  float n=145.0/360; 

  float M=P*(1+(i*n)); 

  printf("%f\n", M);
}
```
                    
Para quem testou o código acima viu que ele deu um erro, e o erro é que em nenhum lugar está definido esse <code>printf</code>, esse função <code>printf</code> está definido na biblioteca padrão do C, para usa-la basta incluir( <code>include</code>) ela no topo do código, assim: 

```
include "stdio.h";

void main() {
  int P=70000; 
  float i=10.5/100; 
  float n=145.0/360; 

  float M=P*(1+(i*n)); 

  printf("%f\n", M);
}
```
Pronto, funcionou! Vimos o resultado de M na tela.

Abraços
                

### Bibliografia
            
<a href="http://www.le.ac.uk/users/rjm1/cotter/index.htm" target="_blank" rel="external noopener">http://www.le.ac.uk/users/rjm1/cotter/index.htm</a>
