programa
{
	
	funcao inicio()
	{

	/*
	 * 1. Faça um sistema que leia a idade de uma pessoa expressa em anos, 
	 * meses e dias e mostre-a expressa apenas em dias. 
	 */
	 //INGREDIENTES - VARIAVEIS
	 inteiro anos
	 inteiro meses
	 inteiro dias
	 inteiro totalDias //clean code 


	 escreva("Digite o numero de anos :")
	 leia(anos)
	 escreva("Digite o numero de meses :")
	 leia(meses)
	 escreva("Digite o numero de dias :")
	 leia(dias)

	 totalDias = (anos * 365) + (meses * 30) + dias

	 escreva("Total de dias na terra :"+totalDias)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */