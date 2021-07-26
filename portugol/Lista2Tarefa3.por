programa
{
	
	funcao inicio()
	{
/*
 * 3) Desenvolva um sistema em que:
Leia 4 (quatro) números;
Calcule o quadrado de cada um;
Se o valor resultante do quadrado do terceiro
for >= 1000, imprima-o e finalize;
Caso contrário, imprima os valores lidos e seus respectivos quadrados.
 */
		real valor1, valor2, valor3, valor4
		real quadrado1, quadrado2, quadrado3, quadrado4

		escreva("Digite o valor 1 :")
		leia(valor1)
		escreva("Digite o valor 2 :")
		leia(valor2)
		escreva("Digite o valor 3 :")
		leia(valor3)
		escreva("Digite o valor 4 :")
		leia(valor4)

		quadrado1 = valor1 * valor1
		quadrado2 = valor2 * valor2
		quadrado3 = valor3 * valor3
		quadrado4 = valor4 * valor4

		se (quadrado3 >= 1000){
			escreva("\nValor 3 foi ",valor3," e seu quadrado é ",quadrado3)
		} 
		senao {
			escreva("\nValor 1 foi ",valor1," e seu quadrado é ",quadrado1)
			escreva("\nValor 2 foi ",valor2," e seu quadrado é ",quadrado2)
			escreva("\nValor 3 foi ",valor3," e seu quadrado é ",quadrado3)
			escreva("\nValor 4 foi ",valor4," e seu quadrado é ",quadrado4)
			
		}
		

		
		
		
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 800; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */