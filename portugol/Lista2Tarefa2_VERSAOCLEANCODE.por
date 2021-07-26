programa
{
	
	funcao inicio()
	{
/*
 * 2) Elabore um sistema que leia as variáveis C e N, 
 * respectivamente código e número de horas trabalhadas 
 * de um operário. E calcule o salário sabendo-se que ele 
 * ganha R$ 10,00 por hora. Quando o número de horas exceder 
 * a 50 calcule o excesso de pagamento armazenando-o na 
 * variável E, caso contrário zerar tal variável. 
 * A hora excedente de trabalho vale R$ 20,00. 
 * No final do processamento imprimir o salário total 
 * e o salário excedente.
 */
	cadeia codigo
	inteiro horasTrabalhadas=0
	inteiro excessoHoras=0
	real salarioTotal=0.00
	real salarioExcedente=0.00
	const real VALOR_HORA_NORMAL = 10.00
	const real VALOR_HORA_EXCEDENTE = 20.00
	const inteiro LIMITE_HORAS = 50

	escreva("Digite o codigo do funcionario :")
	leia(codigo)
	escreva("Digite o numero de horas trabalhadas :")
	leia(horasTrabalhadas)

	se (horasTrabalhadas <= LIMITE_HORAS){
		salarioTotal=horasTrabalhadas * VALOR_HORA_NORMAL
	} 
	senao {
		excessoHoras = horasTrabalhadas-LIMITE_HORAS
		salarioExcedente = excessoHoras * VALOR_HORA_EXCEDENTE
		salarioTotal = salarioExcedente + (LIMITE_HORAS*VALOR_HORA_NORMAL)
	}

	escreva("\nSalario total : R$ ",salarioTotal)
	escreva("\nSalario excedente : R$ ",salarioExcedente)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 745; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */