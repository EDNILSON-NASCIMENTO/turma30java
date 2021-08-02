programa
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
		caracter fecha
		inteiro total=0
	
	funcao inicio()
	{
		

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
			faca {
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
			escreva("Fecha a conta S/N: ")
			leia(fecha)
			se(fecha=='S' ou fecha =='s'){
				escreva("NF LOJA DO ED\n")
				escreva("COD\tPRODUTO\tESTOQUE\tVALOR\tQTDE\tSUB-TOTAL\n")
				para (inteiro x=0;x<3;x++){
					se (carrinho[x]>0){
						escreva(codigo[x],"\t",produto[x],"\t",estoque[x],"\t",valor[x],"\t",carrinho[x],"\t",(carrinho[x]*valor[x]),"\n")	
						total=total+(carrinho[x]*valor[x])
						estoque[x] = estoque[x]-carrinho[x] //ajusta no estoque
						carrinho[x]=0
					}
				}
				escreva("\nTOTAL A PAGA R$ "+total)
				escreva("\nImposto retido 9% R$ "+(total*0.09))
				escreva("\nNovo cliente S/N: ")
				leia(fecha)
				
			}
		} enquanto (fecha=='S')
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1993; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {estoque, 6, 10, 7}-{carrinho, 7, 10, 8}-{auxCod, 8, 9, 6}-{indice, 9, 10, 6}-{auxQtde, 10, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */