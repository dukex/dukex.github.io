title: Introdução Rápida em C
date: 2015-08-22 09:47:23
tags:
---

{% blockquote Wikipedia https://pt.wikipedia.org/wiki/C_%28linguagem_de_programa%C3%A7%C3%A3o%29 Linguagem de Programação C %}
C é uma das linguagens de programação mais populares e existem poucas arquiteturas para as quais não existem compiladores para C. C tem influenciado muitas outras linguagens de programação, mais notavelmente C++, que originalmente começou como uma extensão para C.
{% endblockquote %}

Existem muitas vantagens em aprender C, elas variam um pouco para cada perfil de desenvolvedor, minha motivação inicial foi entender melhor sobre a linguagem que está por trás de outras linguagens que eu gosto, no caso [Go](https://en.wikipedia.org/wiki/Go_%28programming_language%29) e [Ruby](https://en.wikipedia.org/wiki/Ruby_%28programming_language%29), agora como o curso que estou fazendo tem C como base, essa é uma ótima oportunidade para aprender mais sobre essa linguagem.

## Pré-quisitos e suposições

Eu utilizo um Linux para trabalhar e rodar os códigos abaixo(tenho quase certeza que tudo que escrever aqui funciona em MacOS X e outros linux dado a instalação previa de alguns pacotes), caso você esteja fora dessas plataforma por favor busque algo equivalente para escrever e compilar seu código. Eu utilizo para escrever código o [Atom](https://atom.io/), depois do [Vim](https://github.com/vim/vim) ele é o melhor editor que já utilizei, mas eu sei que ele não é para qualquer um, então fique a vontade com seu editor favorito.


## Tipos de Dados

O C é uma linguagem fortemente tipada, isso significa que os dados(textos, numeros, estruturas, etc) tem que obrigatoriamente ter um tipo definido, isso vai ficar claro depois, mas a nivel de curiosidade, existem tambem linguagens fracamente ou dinamicamente tipada e as não tipadas.

O C tem vários tipos de dados, mas para começar vamos focar em 4 tipos basicos, eles são:

**int** Um dado do tipo int é um inteiro positivo ou negativo que seu valor pode ir de -32768 a +32767.

{% codeblock lang:c %}
int a=10;
{% endcodeblock %}

<p></p>
**float** Um dado do tipo float é um número decimal(ponto flutuante) que pode ir de 1.E-36 a 1.E+36. Um dado do tipo float tem 7 digitos de precissão.

{% codeblock lang:c %}
float b=5.2;
{% endcodeblock %}

<p></p>
**double** Um dado do tipo double é um número decimal tambem igual a um *float*, só que com maior precissão, ele pode ir de 1.E-303 a 1.E+303 o que dá 13 digitos de precissão.

{% codeblock lang:c %}
double c=10.0905;
{% endcodeblock %}

<p></p>
**char** Um dado do tipo char armazena um unico caracter, uma letra por exemplo, para quem programa em outras linguagens isso pode parecer estranho no começo, em outras linguagens existe um tipo de dado chamado *string* que é uma cadeia de caracter, no C uma *string* é um conjunto de char, veremos isso depois. Por agora vamos declarar um char usando apenas aspas simples('), existe uma difereça em usar aspas simples(') e aspas duplas(") mas tambem veremos isso depois. Vale lembrar que cada char representa um byte.


{% codeblock lang:c %}
char d='a';
{% endcodeblock %}


## Declarando variaveis

Nos pequenos exemplos acima já vimos como declarar de variavel, vamos tentar entende melhor isso agora. De forma simples, uma variavel é como um atalho ou um deposito(store) onde você armazenas seus dados, você pode declarar sua variabel e assinar um valor para ele ou declarar já com um valor já definido, veja os dois exemplos no esquema abaixo:

{% codeblock Declarando e depois assinando um valor lang:c %}
tipo nome;
nome=dado;
{% endcodeblock %}
<p></p>
{% codeblock Declarando e assinando um valor lang:c %}
tipo nome=dado;
{% endcodeblock %}

Os dois exemplo são equivalente, *tipo* no exmeplo é a definição de qual tipo aquela variavel é ou vai ser, o *nome* é como você vai referenciar aquele dado depois, em C os pontos e virgulas(;) no final são obrigatorio, eles indica a declaração terminou, dado isso, vamos rever as definições de variaveis dos exemplos acima:


{% codeblock lang:c %}
int a=10;
float b=5.2;
double c=10.5;
char d='a';
{% endcodeblock %}

Poderiamos tambem escrever o mesmo código declando as variaveis antes:


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


Com o código acima temos a variavel **a** que quando usada no codigo ira representar o valor inteiro 10, a variavel **b** que sera um decimal com o valor 5.2, e assim por diante.

Uma coisa importante, todos os nomes de variaveis deve começar com letra ou underline(_), caracteres especias como acentos, *, $ %, (, ), @, etc não são permitidos, normalmente se escreve os nomes de variaveis em ingles, isso ajuda a não ter variaveis com nomes ruins tipo, mae, ou cao, e isso tambem deixa seu codigo legivel para qualquer pessoa do mundo ver e entender o que é importante quando se trabalha com open-source ou em equipes multinacionais.


## Operações Aritimetica

Faz operações aritimetica(adição, subtração, divisão e multiplicação) é bem simples em C, então tenho pouca coisa pra dizer, os sinais usados para as operações são os mesmo que usamos normalmente, **+** para adição, **-** para subtração, **/** para divisão e ***** para multiplicação, veja os exemplos abaixo:

{% codeblock lang:c %}  
int receita=1000;
int liquido=receita-300; // a variavel 'liquido' tem o valor de 700
int total=liquido*4+500; // a variavel 'total' tem o valor de 3300
int j=total/3; // a variavel 'j' tem o valor de 1100
{% endcodeblock %}

Pegando algo mais real, imagina que queremos resolver o seguinte problema:

{% blockquote %}
Calcule o montante resultante da aplicação de R$70.000,00 à taxa de 10,5% a.a. durante 145 dias.
{% endblockquote %}

A [formula para calcular montante](http://www.somatematica.com.br/emedio/finan2.php) em juros simples é: ```M=P.(1+(i.n))```, então vamos traduzir isso para C, primeiro declarando as variaveis do problema e depois usando elas na formula:

{% codeblock lang:c %}
int P=70000;
float i=10.5/100; // dividindo por 100, mesma unidade de tempo de n(em ano)
float n=145.0/360; // dividindo por 360(ano comercial)
float M=P*(1+(i*n)); // O resultado será 72960.414062
{% endcodeblock %}

Com esses exemplos temos alguns pontos para ser visto. Vamos a eles:

Primeiro o uso dos comentarios no codigo, em C se faz com duas barras(//), as informações a direita das barras não são executadas e são chamados de comentarios, comentarios são importante por varios motivos, para mim eles são importante para deixar claro porque uma coisa está sendo feito de uma determinada forma, como é o caso das divições de *i* e *n* nos exemplos.

Devemos notar tambem a utilização dos parentes, na nossa conta, se não usassemos os parentes o C iria interpletar a operação de acordo com a ordem de precedente dele, veja mais em [operator precedence](https://en.wikipedia.org/wiki/Order_of_operations#Programming_languages), e o resultado seria ```70000.039062```, ou seja ele iria fazer, algo como (P*1)+(i*n);

Pelo exemplo podemos notar que tem como misturar os tipos, fazer contas, usar *int* com *float* com *double* e até com *char*, basicamente o que acontece é que o C ira converter o a pricisão mais alta os valores com precição menores. No exemplo, o P que é um *int* quando somado com tipo *float* de i e n, é convertido para float.

Se usassemos ***double*** no lugar dos **float** o resultado seria ```72960.416667```, uma diferença ainda é pequena, mas que em determinados software podem fazer muita diferença.

## Loops

## Funcoes

## Final


## Bibliografia

http://www.le.ac.uk/users/rjm1/cotter/index.htm
