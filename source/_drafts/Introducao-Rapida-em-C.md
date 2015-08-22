title: Introdução Rápida em C
date: 2015-08-22 09:47:23
tags:
---

{% blockquote Wikipedia https://pt.wikipedia.org/wiki/C_%28linguagem_de_programa%C3%A7%C3%A3o%29 Linguagem de Programação C %}
C é uma das linguagens de programação mais populares e existem poucas arquiteturas para as quais não existem compiladores para C. C tem influenciado muitas outras linguagens de programação, mais notavelmente C++, que originalmente começou como uma extensão para C.
{% endblockquote %}

Existem muitas vantagens em aprender C e ela varia um pouco para cada perfil de desenvolvedor, minha motivação inicial foi entender melhor sobre a linguagem que está por trás de outras linguagens que eu gosto, no caso [Go](https://en.wikipedia.org/wiki/Go_%28programming_language%29) e [Ruby](https://en.wikipedia.org/wiki/Ruby_%28programming_language%29). Agora o curso que estou fazendo tem C como base, e essa é uma ótima oportunidade para aprender mais sobre a linguagem essa linguagem.

## Pré-quisitos e suposições

Eu utilizo um Linux para trabalhar e rodar os códigos abaixo(tenho quase certeza que tudo que escrever aqui funciona em MacOS X e outros linux dado a instalação previa de alguns pacotes), caso você esteja fora dessas plataforma por favor busque algo equivalente para escrever e compilar seu código.

Nesse post eu vou supor que você tenha encontrado um compilador para C, e que você entede que quando rodar o comando `gcc` estou compilando o código C para um executavel. Eu utilizo para escrever código o [Atom](https://atom.io/), depois do [Vim](https://github.com/vim/vim) ele é o melhor editor que já utilizei, mas eu sei que ele não é para qualquer um, então fique a vontade com seu editor favorito.


## Tipos de Dados

O C é uma linguagem fortemente tipada, isso significa que os dados(textos, numeros, estruturas, etc) tem que obrigatoriamente ter um tipo definido, vai ficar mais claro isso depois, existem tambem linguagens fracamente ou dinamicamente tipada e as não tipadas.

O C tem varios tipos de dados, mas para começar vamos focar em 4 tipos basicos, eles são:

**int** Um dado do tipo int é um inteiro positivo ou negativo que pode ir de -32768 a +32767.

{% codeblock lang:c %}
int a=10;
{% endcodeblock %}

<p></p>
**float** Um dado do tipo float é um número decimal(com ponto flutuante) que pode ir de 1.E-36 a 1.E+36. Tenha nota um dado do tipo float tem 7 digitos de precissão.

{% codeblock lang:c %}
float b=5.2;
{% endcodeblock %}

<p></p>
**double** Um dado do tipo double é um número decimal tambem, só que com mais precissão, ele pode ir de 1.E-303 a 1.E+303 o que dá 13 digitos de precissão.

{% codeblock lang:c %}
double c=10.5;
{% endcodeblock %}

<p></p>
**char** Um dado do tipo char é um unico caracter, uma letra por exemplo, para quem programa em outras linguagens isso pode parecer estranho no começo, normalmente em outras linguagens existe um tipo de dado chamado *string* que é uma cadeia de caracter, no C uma *string* é um conjunto de char, vou tentar abordar isso mais abaixo. Cada char representa um byte. Por agora vamos declarar um char usando apenas aspas simples('), depois explico mais sobre isso.


{% codeblock lang:c %}
char d='a';
{% endcodeblock %}


## Criando variaveis

Nos pequenos exemplos acima já vimos declaração de variavel, vamos tentar entende melhor isso. Uma variavel é um atalho ou um deposito(store) onde você armazenas seus dados, você pode declarar sua variabel e assinar um valor para ele ou declarar já com um valor, veja os dois exemplos no esquema abaixo:

{% codeblock Declarando e depois assinando um valor lang:c %}
tipo nome;
nome=dado;
{% endcodeblock %}
<p></p>
{% codeblock Declarando e assinando um valor lang:c %}
tipo nome=dado;
{% endcodeblock %}

Os dois exemplo são iguais, *tipo* é a definição de qual tipo aquela variavel é ou vai ser, o *nome* é como você vai referenciar aquele dado depois, *dado* é o dado a ser guardado, os pontos e virgulas(;) no final são obrigatorio, eles indica a declaração terminou, dado isso, vamos rever as definições de variaveis dos exemplos acima:


{% codeblock lang:c %}
int a=10;
float b=5.2;
double c=10.5;
char d='a';
{% endcodeblock %}

Com o código acima temos a variavel **a** que quando usada no codigo ira representar o valor inteiro 10, a variavel **b** que sera um decimal com o valor 5.2, e assim por diante.

Uma coisa importante, todos os nomes de variaveis deve começar com letra ou underline(_), caracteres especias como acentos, *, $ %, (, ), @, etc não são permitidos, normalmente se escreve os nomes de variaveis em ingles, isso ajuda a não ter variaveis com nomes ruins tipo, mae, ou cao, e isso tambem deixa seu codigo legivel para qualquer pessoa do mundo ver e entender o que é importante quando se trabalha com open-source ou em equipes multinacionais.


## Operações Aritimetica







## Bibliografia

http://www.le.ac.uk/users/rjm1/cotter/index.htm
