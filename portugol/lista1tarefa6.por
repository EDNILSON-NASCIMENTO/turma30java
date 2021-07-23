programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{

		real x1
		real x2
		real y1
		real y2
		real d
		real p1
		real p2
		

		escreva("Digite o valor de x1 :")
		leia(x1)
		escreva("Digite o valor de x2 :")
		leia(x2)
		escreva("Digite o valor de y1 :")
		leia(y1)
		escreva("Digite o valor de y2 :")
		leia(y2)
		
		//USANDO VARIAVEL AUXILIARES
		p1 = Mat.potencia((x2-x1), 2)
		p2 = Mat.potencia((y2-y1), 2)
		d = Mat.raiz((p1+p2), 2)
		
		escreva("\n(auxiliares) A tal da distância é "+d)

		//usando o processo direto
		d = Mat.raiz((Mat.potencia((x2-x1),2)+Mat.potencia((y2-y1), 2)),2)

		escreva("\n(modo direto) A tal da distância é "+d)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 517; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */