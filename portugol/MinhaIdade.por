programa
{
	
	funcao inicio()
	{
		//variaveis - fortemente tipada /fracamente tipada
		cadeia nome
		inteiro anoNascimento //camelCase PascalCase
		inteiro idade
		const inteiro ANOATUAL = 2021
		caracter vocativo
			
		
		escreva("Digite o nome :")
		leia(nome)
		escreva("Digite como preferer ser identificade - O/A/E :")
		leia(vocativo)
		escreva("Digite o ano de nascimento :")
		leia(anoNascimento)
		idade = ANOATUAL - anoNascimento
		//SE ACIMA OU IGUAL A 45 CRINGE
		// SE FOR ABAIXO DE 16 INFANTO-JUVERNIL 
		
		
		se (idade >= 45){
			se(vocativo == 'O' ou vocativo == 'o'){
				escreva("\nOi Sr ",nome," sua idade é ",idade," e vc é cringe")		
			}
			
			
		}
		senao se (idade<=16){
			escreva("\nOi, ",nome," sua idade é ",idade," e vc é infanto-juvenil")	
		}
		senao se(idade < 18){
			escreva("\nOi, ",nome," sua idade é ",idade," e vc é adolescente")	
		}
		senao {
			escreva("\nOi, ",nome," sua idade é ",idade," e vc é não é cringe")	
		}
		
		
		//ACIMA DE 45 ANOS VC É CRINGE
		
		//abaixo de 45 anos
		//
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 665; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 9, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */