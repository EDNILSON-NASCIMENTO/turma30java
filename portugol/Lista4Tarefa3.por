programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro LINHA=4
		const inteiro COLUNA=6
		inteiro N1[LINHA][COLUNA]
		inteiro N2[LINHA][COLUNA]
		inteiro M1[LINHA][COLUNA]
		inteiro M2[LINHA][COLUNA]
		
		

		
		para (inteiro l=0; l<LINHA; l++){
			para(inteiro c=0; c<COLUNA; c++){
				
				escreva("Digite um valor para N1 :")
				leia(N1[l][c])
				//N1[l][c] = Util.sorteia(3, 5)
				escreva("Digite um valor para N2 :")
				leia(N2[l][c])
				//N2[l][c] = Util.sorteia(1, 4)
				
				
				M1[l][c] = N1[l][c] + N2[l][c]
				M2[l][c] = N1[l][c] - N2[l][c]
			}
		}
		escreva("MATRIZ N1\n")
		para (inteiro l=0; l<LINHA; l++){
			para(inteiro c=0; c<COLUNA; c++){
				escreva(N1[l][c]," ")
			}
			escreva("\n")
		}
		escreva("MATRIZ N2\n")
		para (inteiro l=0; l<LINHA; l++){
			para(inteiro c=0; c<COLUNA; c++){
				escreva(N2[l][c]," ")
			}
			escreva("\n")
		}
		escreva("MATRIZ M1\n")
		para (inteiro l=0; l<LINHA; l++){
			para(inteiro c=0; c<COLUNA; c++){
				escreva(M1[l][c]," ")
			}
			escreva("\n")
		}
		escreva("MATRIZ M2\n")
		para (inteiro l=0; l<LINHA; l++){
			para(inteiro c=0; c<COLUNA; c++){
				escreva(M2[l][c]," ")
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
 * @POSICAO-CURSOR = 994; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {N1, 9, 10, 2}-{N2, 10, 10, 2}-{M1, 11, 10, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */