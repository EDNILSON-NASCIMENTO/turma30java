programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		real valor1, valor2, valor3, valor4
		
		escreva("Digite o valor 1 :")
		leia(valor1)
		parImpar(valor1)
		escreva("Digite o valor 2 :")
		leia(valor2)
		parImpar(valor2)
		escreva("Digite o valor 3 :")
		leia(valor3)
		parImpar(valor3)
		escreva("Digite o valor 4 :")
		leia(valor4)
		parImpar(valor4)
		linha()
		se ( (Mat.potencia(valor3,2) ) >= 1000 ){
			escreva("\nValor 3 foi ",valor3," e seu quadrado é ",Mat.potencia(valor3,2))
		} 
		senao {
			escreva("\nValor 1 foi ",valor1," e seu quadrado é ",Mat.potencia(valor1,2))
			escreva("\nValor 2 foi ",valor2," e seu quadrado é ",Mat.potencia(valor2,2))
			escreva("\nValor 3 foi ",valor3," e seu quadrado é ",Mat.potencia(valor3,2))
			escreva("\nValor 4 foi ",valor4," e seu quadrado é ",Mat.potencia(valor4,2))
			
		}
		
	}
	
	funcao linha(){
		escreva("---------------------------------------------------------------------\n")
	}
	funcao parImpar(inteiro numero){
		se (numero<0){
			escreva("Numero negativo. Não vai rolar....\n")
		}
		senao se(numero == 0 ){
			escreva("Zero é neutro!!! Não vai rolar...\n")
		}
		senao se((numero%2)==0){
			escreva("Numero par!!\n")
		} senao {
			escreva("Numero é impar!!\n")
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */