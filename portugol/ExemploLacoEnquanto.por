programa
{
	
	funcao inicio()
	{

		inteiro numero = 0
		inteiro total = 0 
		cadeia senha = "123"
		inteiro contador=0
		faca {
			
			contador++ //contador = contador+1
			se (contador==1){
				escreva("Digite a senha :")
				leia(senha)
				
			} senao se (contador==2) {
				escreva("Vc só tem mais essa chance !!\n")
				escreva("Digite a senha novamente: ")
				leia(senha)
				
			} senao {
				
			}
			
				
		} enquanto (senha !="123")
	
		escreva("Seguindo o programa e ajustando....")	
		

		
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 490; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */