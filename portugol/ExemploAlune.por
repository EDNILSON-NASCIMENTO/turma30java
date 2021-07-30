programa
{
	
	funcao inicio()
	{
		cadeia alune[4]
		cadeia matricula[4]  //mat-1
		inteiro nota[4] //todo mundo com 1

		alune[0] = "MARCOS"
		alune[1] = "MARIA"
		alune[2] = "PEDRO"
		alune[3] = "SARA"

		cadeia auxMat
		inteiro auxNota = 0
		inteiro x=0
		para (x=0;x<4; x++){
			matricula[x] = "MAT-"+(x+1)
			nota[x] = 1
		}

		escreva("BOLETIM ATUAL\n")
		escreva("----------------------------------------\n")
		escreva("MAT\tNOME\t\tPONTOS ATUAIS\n")
		para (x=0; x<4; x++){
			escreva(matricula[x],"\t",alune[x],"\t\t",nota[x],"\n")
		}
		escreva("Escolha pela matricula alune :")
		leia (auxMat)
		para (x=0; x<4; x++){
			se (auxMat == matricula[x]){
				escreva(matricula[x],"\t",alune[x],"\t\t",nota[x],"\n")
				escreva("Digite a nova nota :")
				leia(auxNota)
				nota[x]= nota[x]+auxNota 
				pare
			} 
			
		}
		
		escreva("Alune selecionade : "+matricula[x]," ",alune[x],"\n")
		escreva("NOVO BOLETIM \n")
		escreva("MAT\tNOME\t\tPONTOS ATUAIS\n")
		para (x=0; x<4; x++){
			escreva(matricula[x],"\t",alune[x],"\t\t",nota[x],"\n")
		}
		
		
		
		
		
		


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 842; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */