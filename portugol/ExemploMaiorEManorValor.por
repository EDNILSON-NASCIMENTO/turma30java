programa
{
	
	funcao inicio()
	{
		inteiro valor
		inteiro maiorValor=0
		inteiro menorValor=32000
		faca {
			
			escreva("Digite um valor :")
			leia(valor)
			se (valor > maiorValor){
				maiorValor = valor
			}
			se (valor < menorValor e valor > 0){
				menorValor = valor
			}
			
		} enquanto (valor > 0 )
		
		escreva("\nMaior valor ",maiorValor)
		escreva("\nMenor valor ",menorValor)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */