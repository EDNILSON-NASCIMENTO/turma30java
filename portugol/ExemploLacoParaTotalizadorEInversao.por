programa
{
	
	funcao inicio()
	{
		inteiro total=0
		inteiro numero=0
		real media=0
		inteiro maior=0
		
		para(inteiro x=1; x<=5; x++){
			
			escreva("Digite um numero: ")
			leia(numero)
			//totalizador
			total = total + numero
			se (numero > maior){
				maior = numero
			}
			
		}
		//ache o maior valor
		media = total / 5
		escreva("\nO total é ",total)
		escreva("\nA media é  ",media)
		escreva("\nMaior valor digitado : ", maior)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 448; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */