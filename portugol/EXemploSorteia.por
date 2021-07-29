programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro jogadas[6]

		para(inteiro x=0; x<6; x++){
			jogadas[x] = Util.sorteia(1,60)
		}
		escreva("mostrando os valores!!\n")
		para(inteiro x=0; x<6; x++){
			escreva("lancamento ",x+1," - ",jogadas[x],"\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 214; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {jogadas, 7, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */