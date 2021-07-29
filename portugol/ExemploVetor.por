programa
{
	
	funcao inicio()
	{
		//nome alune - alunes [4]
		//nota alune - notas [4]
		cadeia alunes[4]
		inteiro notas[4]


		para(inteiro x=0; x<4; x++){
			escreva("digite o nome: ")
			leia(alunes[x])
			escreva("digite a nota: ")	
			leia(notas[x])
		}
		
		escreva("NOME\tNOTA\n")
		para (inteiro x=0; x<4; x++){
			se (notas[x]<=5){
				escreva(alunes[x],"\t",notas[x]," ainda não, estude mais!\n")	
			}
			senao {
				escreva(alunes[x],"\t",notas[x]," aprovade, continue assim!\n")	
			}
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 510; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {alunes, 8, 9, 6}-{notas, 9, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */