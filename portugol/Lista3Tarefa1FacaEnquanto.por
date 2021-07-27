programa
{
	
	funcao inicio() {

		inteiro contador = 233
		escreva(contador)
		escreva("\n")
		faca {
			se(contador >=300 e contador <=400){
				
				escreva("somando 3 - ",contador)
				escreva("\n")
				contador = contador + 3
			}
			senao {
				
				escreva("somando 5 - ",contador)
				escreva("\n")
				contador = contador + 5
			}
		} enquanto (contador < 456)
		escreva(456)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */