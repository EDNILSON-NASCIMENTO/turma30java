programa
{
	
	funcao inicio()
	{
		inteiro matriz1[2][2]
		inteiro matriz2[2][2]

		matriz1[0][0] = 10
		matriz1[0][1] = 20
		matriz1[1][0] = 30
		matriz1[1][1] = 10

		
		
		inteiro diagonalPrincipal=0
		/*
		escreva(matriz1[0][0]+"\n")
		escreva(matriz1[0][1]+"\n")
		escreva(matriz1[1][0]+"\n")
		escreva(matriz1[1][1]+"\n")
		*/

		para(inteiro linha=0; linha<2; linha++){
			
			para(inteiro coluna=0; coluna<2; coluna++){
				escreva(matriz1[linha][coluna]+" ")
				se(linha==coluna){
					diagonalPrincipal = diagonalPrincipal + matriz1[linha][coluna]
				}
			}
			escreva("\n")
		}
		escreva("soma dos valores da diagonal principal :",diagonalPrincipal,"\n")

		para (inteiro linha=0; linha<2; linha++){
			para(inteiro coluna=0; coluna<2; coluna++){
				matriz2[linha][coluna] = matriz1[linha][coluna] + matriz1[linha][coluna]
				escreva(matriz2[linha][coluna]+" ")
			}
			escreva("\n")
		}
		
		
		
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 861; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz1, 6, 10, 7}-{matriz2, 7, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */