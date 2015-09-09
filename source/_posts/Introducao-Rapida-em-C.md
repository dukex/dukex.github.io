title: Introdução Rápida em C
date: 2015-09-9 00:03:23
tags: c
---

{% blockquote Wikipedia https://pt.wikipedia.org/wiki/C_%28linguagem_de_programa%C3%A7%C3%A3o%29 Linguagem de Programação C %}
C é uma das linguagens de programação mais populares e existem poucas arquiteturas para as quais não existem compiladores para C. C tem influenciado muitas outras linguagens de programação, mais notavelmente C++, que originalmente começou como uma extensão para C.
{% endblockquote %}

Existem muitas vantagens em aprender C, elas variam um pouco para cada perfil de desenvolvedor, minha motivação inicial foi entender melhor sobre a linguagem que está por trás de outras linguagens que eu gosto, no caso [Go](https://en.wikipedia.org/wiki/Go_%28programming_language%29) e [Ruby](https://en.wikipedia.org/wiki/Ruby_%28programming_language%29), agora como o curso que estou fazendo tem coisas em C, essa é uma ótima oportunidade para aprender mais sobre essa linguagem.

### Pré-requisitos e suposições

Eu utilizo um Linux para trabalhar e rodar os códigos abaixo(tenho quase certeza que tudo que escrever aqui funciona em MacOS X e outros linux dado a instalação previa de alguns pacotes), caso você esteja fora dessas plataforma por favor busque algo equivalente para escrever e compilar seu código. Eu utilizo como editor de código o [Atom](https://atom.io/), pois acredito que depois do [Vim](https://github.com/vim/vim) ele é o melhor editor que já utilizei, mas eu sei que ele não é para qualquer um, então fique a vontade com seu editor favorito.


### Tipos de Dados

O C é uma **linguagem fortemente tipada**, isso significa que os dados(textos, números, estruturas, etc) tem que obrigatoriamente ter um tipo definido, isso vai ficar claro depois, porém a nível de curiosidade, existem também linguagens fracamente ou dinamicamente tipada e as não tipadas.

O C tem vários tipos de dados, mas para começar vamos focar em 4 tipos básicos, eles são:

* **int** Um dado do tipo int é um inteiro positivo ou negativo que seu valor pode ir de -32768 a +32767. Um exemplo para declaração de um int é a seguinte:

{% codeblock lang:c %}
int a=10;
{% endcodeblock %}

* **float** Um dado do tipo float é um número decimal(ponto flutuante) que pode ir de 1.E-36 a 1.E+36, isso significa que um dado do tipo float tem 7 dígitos de precisão. Veja o exemplo:

{% codeblock lang:c %}
float b=5.2; // 5.200000
{% endcodeblock %}

* **double** Um dado do tipo double é um número decimal também, igual a um *float*, só que com maior precisão, ele pode ir de 1.E-303 a 1.E+303 o que dá 13 dígitos de precisão.

{% codeblock lang:c %}
double c=10.0905;
{% endcodeblock %}

* **char** Um dado do tipo char armazena um único caractere, uma letra por exemplo, para quem programa em outras linguagens isso pode parecer estranho no começo, em outras linguagens existe um tipo de dado chamado *string* que é uma cadeia de caractere, no C uma *string* é um conjunto de char, veremos isso depois. Por agora vamos declarar um char usando apenas aspas simples('), existe uma diferença em usar aspas simples(') e aspas duplas(") mas também veremos isso depois. Vale lembrar que cada char representa um byte.

{% codeblock lang:c %}
char d='a';
{% endcodeblock %}


### Declarando variáveis

Nos pequenos exemplos acima já vimos como declarar variável, vamos tentar entende melhor isso agora. De forma simples, uma variável é como um atalho ou um deposito(store) onde você armazenas seus dados, você pode declarar sua variabel e assinar um valor para ele ou declara-la com um valor já definido, veja os dois exemplos no esquema abaixo:

{% codeblock Declarando e depois assinando um valor lang:c %}
tipo nome;
nome=dado;
{% endcodeblock %}
<p></p>
{% codeblock Declarando já com um valor assinado lang:c %}
tipo nome=dado;
{% endcodeblock %}

Os dois exemplo são equivalente, *tipo* no exemplo é a definição de qual tipo aquela variável é ou vai ser, o *nome* é como você vai referenciar aquele dado depois, em C os pontos e vírgulas(;) no final são obrigatório, isso indica que a declaração terminou, dado isso, vamos rever as definições de variáveis dos exemplos acima:


{% codeblock lang:c %}
int a=10;
float b=5.2;
double c=10.5;
char d='a';
{% endcodeblock %}

Poderíamos também escrever o mesmo código declarando as variáveis antes:


{% codeblock lang:c %}
int a;
float b;
double c;
char d;

a=10;
b=5.2;
c=10.5;
d='a';
{% endcodeblock %}


Com o código acima temos a variável **a** que quando usada no código ira representar o valor inteiro 10, a variável **b** que séra um decimal com o valor 5.200000, e assim por diante.

Uma coisa importante é que, todos os nomes de variáveis deve começar com letra ou underline(_), os caracteres especiais como acentos, *, $ %, (, ), @, etc não são permitidos, normalmente se escreve os nomes de variáveis em inglês, isso ajuda a não ter variáveis com nomes ruins tipo, mae, ou cao, e isso também deixa seu código legível para qualquer pessoa do mundo ver e entender o que é importante quando se trabalha com open-source ou em equipes multinacionais.


### Operações Aritmética

Fazer operações aritmética(adição, subtração, divisão e multiplicação) é bem simples em C, então tenho pouca coisa pra dizer, os sinais usados para as operações são os mesmo que usamos normalmente no dia a dia, então vamos usar **+** para adição, **-** para subtração, **/** para divisão e ***** para multiplicação, veja alguns exemplos abaixo:

{% codeblock lang:c %}
int receita=1000;
int liquido=receita-300; // a variável 'liquido' tem o valor de 700
int total=liquido*4+500; // a variável 'total' tem o valor de 3300
int j=total/3; // a variável 'j' tem o valor de 1100
{% endcodeblock %}

Para pegar algo mais real e usar com o que aprendemos, imagina que queremos resolver o seguinte problema:

{% blockquote %}
Calcule o montante resultante da aplicação de R$70.000,00 à taxa de 10,5% a.a. durante 145 dias.
{% endblockquote %}

Parece difícil mas vamos com calma, a [formula para calcular montante](http://www.somatematica.com.br/emedio/finan2.php) em juros simples é: ```M=P.(1+(i.n))```, então vamos traduzir os dados para C:

{% codeblock lang:c %}
int P=70000; // aplicação
float i=10.5/100; // taxa de juros, vamos dividir por 100,
//                   para termos a mesma unidade de tempo
//                   de n(em ano)
float n=145.0/360; // dividindo n por 360, 360 numero de
//                    dias do ano comercial
{% endcodeblock %}

Pronto temos nosso **P**, o **i** e o **n**, agora só precisamos escrever a formula:

{% codeblock lang:c %}
float M=P*(1+(i*n)); // O resultado será 72960.414062
{% endcodeblock %}


Com esses exemplos temos alguns pontos para ser visto que podem ter gerado duvidas.

Primeiro o uso dos comentários no código, em C se faz com duas barras(//), as informações a direita das barras não são executadas e são chamados de comentários, comentários  spodem ser importante de varias formas, eu utilizo comentários para deixar claro porque uma coisa está sendo feito de uma determinada forma, como é o caso das divisões de *i* e *n* nos exemplos, se não tivesse comentando o motivo das divisões fica muito obscuro o por que daquilo;

Devemos notar também a utilização dos parentes, na nossa conta, se não usar os parentes o compilador do C iria interpretar a operação de acordo com a ordem de precedente dele, veja mais em [operator precedence](https://en.wikipedia.org/wiki/Order_of_operations#Programming_languages), e o resultado seria ```70000.039062```, ou seja ele iria fazer, algo como (P*1)+(i*n);

Pelo exemplo podemos ver também que tem como misturar os tipos, fazer contas usando *int* e *float* com *double* e até com *char*, basicamente o que acontece é que o C converte os dados com precisão menor para a precisão mais alta. No exemplo, o P que é um *int* quando somado com tipo *float* de i e n, é convertido para float;

Se usássemos ***double*** no lugar dos **float** o resultado seria ```72960.416667```, uma diferença pequena, mas que em determinados software podem fazer muita diferença(é o caso de Softwares para o mercado financeiro).

### Como rodar e testar o basico?

Todo programa C tem alguma coisa essencial, que é uma função **main**, essa função é o ponto de entrada do seu programa, eu pretendo falar de funções num próximo post, por agora vamos apenas criar uma função main que não retorna nada(*void*), veja:


{% codeblock lang:c %}
void main() {
}
{% endcodeblock %}

Nosso código deve ir entre a abertura e o fechamento das chaves, como abaixo:

{% codeblock lang:c %}
void main() {
  int P=70000;
  float i=10.5/100;
  float n=145.0/360;
  float M=P*(1+(i*n));
}
{% endcodeblock %}

Esse código faz o que esperamos(o que vimos fazer acima), mas ele não mostra nada para nós, o C tem uma função chamada `printf` que imprime algo na tela, vamos usar o printf para mostrar o resultado 'M'.


{% codeblock lang:c %}
void main() {
  int P=70000;
  float i=10.5/100;
  float n=145.0/360;
  float M=P*(1+(i*n));
  printf("%f\n", M);
}
{% endcodeblock %}

Para quem testou o código acima viu que ele deu um erro, e o erro é que em nenhum lugar está definido esse `printf`, esse função `printf` está definido na biblioteca padrão do C, para usa-la basta incluir(`include`) ela no topo do código, assim:


{% codeblock lang:c %}
#include <stdio.h>

void main() {
  int P=70000;
  float i=10.5/100;
  float n=145.0/360;
  float M=P*(1+(i*n));
  printf("%f\n", M);
}
{% endcodeblock %}

Pronto, funcionou! Vimos o resultado de M na tela. Nos próximos posts vou falar de fluxo(loops, condicionais, etc), funções e concatenação de string.

Abraços

### Bibliografia

http://www.le.ac.uk/users/rjm1/cotter/index.htm
