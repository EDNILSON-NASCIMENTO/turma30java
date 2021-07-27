programa
{
	
	funcao inicio()
	{
		
	//1 - 100
	// se o numero for multiplo de 3 eu pego e somo ele ao total de
	//multiplos de 3
	//faço isso até 100
		inteiro total=0
	
		para (inteiro x=1; x<=100; x++){
			/*
			se ((x%3)==0){
				total = total + x	
			}
			*/
			 //totalizador - didatico
			se ((x%3)==0 e (x%2)==1){
				escreva("x ", x, " + o total ",total, " = ")
				total += x //totalizador
				escreva(total,"\n")	
			}
			
			
			
		}
		escreva("o  total dos valores é : ",total)
		
		
	} //depois da funcao inicio

	funcao linha(inteiro tamanho){
		para (inteiro x=1; x <= tamanho; x++){
			escreva("-")	
		}
		escreva("\n")
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 646; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */