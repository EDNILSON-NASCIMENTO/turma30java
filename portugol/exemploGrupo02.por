programa
{
	
	funcao inicio()
	{
		cadeia produto[]={"CAMISA","CALÇA","BERMUDA"}
		cadeia codigo[3]
		inteiro valor[]={100,150,50}
		inteiro estoque[3]
		inteiro carrinho[3]
		cadeia auxCod
		inteiro indice = 0
		inteiro auxQtde = 0
		caracter op

		//carreguei os vetores
		para (inteiro x=0;x<3;x++){
			codigo[x]="G0-"+(x+1)
			estoque[x]=10
			carrinho[x]=0
			
		}

		

		faca {
			limpa()
			escreva("LOJA ED STYLE\n")
			escreva("COD\tPRODUTO\tESTOQUE\tVALOR\n")
			para (inteiro x=0;x<3;x++){
				escreva(codigo[x],"\t",produto[x],"\t",estoque[x],"\t",valor[x],"\n")
			}
			escreva("\n")
			escreva("CARRINHO DE COMPRAS \n")
			escreva("COD\tPRODUTO\tESTOQUE\tVALOR\tQTDE\tSUB-TOTAL\n")
			para (inteiro x=0;x<3;x++){
				se (carrinho[x]>0){
					escreva(codigo[x],"\t",produto[x],"\t",estoque[x],"\t",valor[x],"\t",carrinho[x],"\t",(carrinho[x]*valor[x]),"\n")	
				}
				
			}
			escreva("\n")
			escreva("Digite o codigo do produto :")
			leia(auxCod)
			para (indice=0;indice<3;indice++){
				se (auxCod==codigo[indice]){
					
					pare
				}
				
			}
			escreva(codigo[indice],"\t",produto[indice],"\t",estoque[indice],"\t",valor[indice],"\t",carrinho[indice])	
			escreva("\nDigite a quantidade necessaria :")
			leia(auxQtde)
			se (auxQtde > estoque[indice]){
				escreva("Impossivel realizar...")
				
			} senao {
				carrinho[indice]=auxQtde //marca a posição e deixa o valor	
			}
			
			//estoque[indice] = estoque[indice]-auxQtde //ajusta no estoque
			escreva("Continua comprando S/N :")
			leia(op)
		} enquanto (op=='S' ou op=='s')
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */