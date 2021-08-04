programa
{
		/*G7001  Colar Safira R$ 70,00
		G7002  Pulceira Liz R$ 55,50
		G7003  Anel Cristal R$ 39,99
		G7004  Brinco Jaspe R$ 59,99
		G7005  Pingente Lua R$ 65,50
		G7006  Colar Amélia R$ 85,00
		G7007  Anel Cristal R$ 45,50
		G7008  Brinco Ágata R$ 40,50
		G7009  Pulseira Icy R$ 60,00
		G7010  Anel Topázio R$ 59,99*/
		
	inclua biblioteca Matematica --> mat
	inclua biblioteca Calendario --> cal
	
	funcao inicio(){

		const inteiro TAM = 10
		cadeia produto[TAM] = {"PULSEIRA ICY","ANEL TOPÁZIO","COlAR SAFIRA","PULSEIRA LIZ","ANEL CRISTAL","BRINCO JASPE","PINGENTE LUA","COLAR AMÉLIA","ANEL CRISTAL","BRINCO ÁGATA"}
		cadeia carrinho[TAM], codigo[TAM]
		real valores[TAM] = {70.99,50.99,39.99,59.99,65.59,85.99,45.59,40.59,99.59,59.79}
		inteiro estoque[TAM] = {10,10,10,10,10,10,10,10,10,10}, x = 0
		inteiro contEstoque[TAM] ={0,0,0,0,0,0,0,0,0,0}
		cadeia slogan = "✧ TRAZENDO SEU BRILHO INTERIOR ✧", auxCod = "", opcao = "S", opcao2 = "S", opcao3 = "S"//TAVA FAZENDO TESTES E ACABEI MUDANDO
		inteiro auxQntd[TAM], auxCod2 = 0, pagamento = 0
		real contador = 0.00, valorCompra[TAM]
		logico formato = falso
		

		//OS CODIGOS DO PRODUTO SERÃO GERADOS AQUI
		para(x = 0 ;x < 10; x++){
			codigo[x] = "G7-0" + (x + 1)
			auxQntd[x] = 0
		}

		linha()
		escreva("\n\t\t      \n")
		nome()
		escreva("\n\n\t     ",slogan,"\n")
		linha()
		escreva("\t          RELAÇÃO DE PRODUTOS")
		linha()
		escreva("CÓDIGO\t        PRODUTO\t\t   PREÇO\t  ESTOQUE\n")
		para(x = 0; x < 10; x++){
			escreva("\n ",codigo[x],"\t     ",produto[x],"\t   ",valores[x],"\t    ",estoque[x])
		}
		linha()
		
		escreva("\nDESEJA FAZER COMPRAS? (S/N): ")
		leia(opcao3)
		linha()

		se(opcao3 == "S" ou opcao3 == "s"){
			se(opcao == "S" ou opcao == "s"){
				faca{
					escreva("\nDIGITE O CÓDIGO DO PRODUTO: ")
					leia(auxCod)
						
					para(x = 0; x < 10; x++){
						se(auxCod == codigo[x]){
							escreva("\nINFORME A QUANTIDADE QUE DESEJA: ")
							leia(contEstoque[x])
							auxQntd[x]+=contEstoque[x]
	
							se(contEstoque[x] > estoque[x]){
								auxQntd[x] = 0
								linha()
								escreva("QUANTIDADE INVÁLIDA\n")
								escreva("\nO ESTOQUE É DE: ", estoque[x])
								
							}senao se(contEstoque[x] <= 0){
								linha()
								escreva("QUANTIDADE INVÁLIDA")
								escreva("\nO ESTOQUE É DE: ", estoque[x])
								
							}senao se(contEstoque[x] <= estoque[x]){
								estoque[x] = estoque[x] - contEstoque[x]
								valorCompra[x] = valores[x] * auxQntd[x]
								
								linha()
								escreva("\t\t  CARRINHO\n\n")
								escreva("CÓDIGO\tPRODUTO\t\tPREÇO\t    QUANTIDADE\n")
								
								para(x = 0; x < 10; x++){
									se(auxQntd[x] > 0){
										escreva("\n",codigo[x],"\t", produto[x],"\tR$", mat.arredondar(valorCompra[x], 2),"\t", auxQntd[x])
								
									}
								}	
							}
						}
						
					}
					
					linha()
					escreva("DESEJA CONTINUAR COMPRANDO? (S/N): ")
					leia(opcao)
					linha()
					escreva("\t          RELAÇÃO DE PRODUTOS")
					linha()
					escreva("CÓDIGO\t        PRODUTO\t\t   PREÇO\t  ESTOQUE\n")
					para(x = 0; x < 10; x++){
						escreva("\n ",codigo[x],"\t     ",produto[x],"\t   ",valores[x],"\t    ",estoque[x])
					}
					linha()
					
				}enquanto(opcao == "S" ou opcao == "s")
	
				escreva("\nDESEJA MODIFICAR SEU PEDIDO? (S/N):  ")
				leia(opcao2)
				
				enquanto(opcao2 =="s" ou opcao2 =="S"){
					escreva("\nDIGITE O CÓDIGO DO PRODUTO: ")
					leia(auxCod)
					
	               	para(x = 0; x < 10; x++){
						se(auxCod == codigo[x]){								
							escreva("\nINFORME A QUANTIDADE QUE DESEJA DIMINUIR DO PRODUTO: ")
							leia(contEstoque[x])
							auxQntd[x]-=contEstoque[x]
							estoque[x] = estoque[x] + contEstoque[x]
							valorCompra[x] = valores[x] * auxQntd[x]
						}	
							
						linha()
						escreva("\t\t  CARRINHO\n\n")
						escreva("CÓDIGO\tPRODUTO\t\tPREÇO\t    QUANTIDADE\n")
						para(x = 0; x < 10; x++){
							se(auxQntd[x] > 0){
								escreva("\n",codigo[x],"\t", produto[x],"\tR$", mat.arredondar(valorCompra[x], 2),"\t\t", auxQntd[x])
							}
				         	}
	               	}
	               	
	               	escreva("\nDESEJA CONTINUAR MODIFICANDO O SEU PEDIDO? (S/N):  ")
					leia(opcao2)
				}
	               
				para(x = 0; x < 10; x++){
					contador += (auxQntd[x] * valores[x])
				}
				
				se(contador == 0){
					limpa()
					linha()
					escreva("\n\t\t      \n")
					nome()
					escreva("\n\n\t     ",slogan,"\n")
					linha()
					escreva("\t\t      ATÉ BREVE!!")
					linha()
					
				}senao{
					linha()
					escreva("\t   VALOR TOTAL DA COMPRA: R$", contador)
					linha()
					escreva("\t\tFORMA DE PAGAMENTOS:\n\n")
					escreva(" OPÇÃO 1 - A VISTA COM 10% DESCONTO\n")
					escreva(" OPÇÃO 2 - NO CARTÃO COM ACRESCIMO DE 10%\n")
					escreva(" OPÇÃO 3 - EM 2X COM 15% TOTAL DE ACRESCIMENTO\n")
					linha()
				
					faca{
						escreva("INSIRA AQUI SUA FORMA DE PAGAMENTO: ")
						leia(pagamento)
					
						escolha(pagamento){
							caso 1:
								limpa()
								linha()
								escreva("\n\t\t      \n")
								nome()
								escreva("\n\n\t     ",slogan,"\n")
								linha()
								escreva("\t\t\n VALOR TOTAL: R$", mat.arredondar((contador * 0.9), 2))
								escreva("\t\t\n 9% DE IMPOSTOS: R$", mat.arredondar((contador * 0.09), 2))
								escreva("\t\t\n DATA DE EMISSÃO: ",cal.dia_mes_atual(),"/",cal.mes_atual(),"/",cal.ano_atual())
								escreva("\tHORA: ", cal.hora_atual(formato),":",cal.minuto_atual(),":",cal.segundo_atual())
							pare
						
							caso 2:
								limpa()
								linha()
								escreva("\n\t\t      \n")
								nome()
								escreva("\n\n\t     ",slogan,"\n")
								linha()
								escreva("\t\t\n VALOR TOTAL: R$", mat.arredondar((contador * 1.1), 2))
								escreva("\t\t\n 9% DE IMPOSTOS: R$", mat.arredondar((contador * 0.09), 2))
								escreva("\t\t\n DATA DE EMISSÃO: ",cal.dia_mes_atual(),"/",cal.mes_atual(),"/",cal.ano_atual())
								escreva("\tHORA: ", cal.hora_atual(formato),":",cal.minuto_atual(),":",cal.segundo_atual())
							pare
							
							caso 3:
								contador = (contador * 1.15) / 2
								limpa()
								linha()
								escreva("\n\t\t      \n")
								nome()
								escreva("\n\n\t     ",slogan,"\n")
								linha()
								escreva("\t\tPARCELADO EM 2X | 15% DE ACRÉSCIMO\n")
								escreva("\t\t\n VALOR TOTAL DE CADA PARCELA: R$", mat.arredondar(contador, 2))
								escreva("\t\t\n 9% DE IMPOSTOS: R$", mat.arredondar((contador * 0.09), 2))
								escreva("\t\t\n DATA DE EMISSÃO: ",cal.dia_mes_atual(),"/",cal.mes_atual(),"/",cal.ano_atual())
								escreva("\tHORA: ", cal.hora_atual(formato),":",cal.minuto_atual(),":",cal.segundo_atual())
							pare
						
							caso contrario:
								escreva("OPÇÃO INVÁLIDA, TENTE NOVAMENTE.\n")	
							}
							
					}enquanto(pagamento >= 3)
				}
			}senao se(opcao == "n" ou opcao == "N"){
				limpa()
				linha()
				escreva("\n\t\t      \n")
				nome()
				escreva("\n\n\t     ",slogan,"\n")
				linha()
				escreva("\t\t      ATÉ BREVE!!")
				linha()
				
			}senao{
				limpa()
				linha()
				escreva("\t\t      OPÇÃO INVÁLIDA!")
				inicio()
				
			}
		}senao se(opcao3 == "n" ou opcao3 == "N"){
			limpa()
			linha()
			escreva("\n\t\t      \n")
			nome()
			escreva("\n\n\t     ",slogan,"\n")
			linha()
			escreva("\t\t      ATÉ BREVE!!")
			linha()
			
		}senao{
			limpa()
			linha()
			escreva("\t\t      OPÇÃO INVÁLIDA!")
			inicio()
			
		}
	}

	funcao linha(){
		  escreva("\n══════════════════════════════════════════════════════════\n ")
	}
	
	funcao nome(){
		escreva("\t\t☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆\n")
		escreva("\t\t☆ ╔═══════════════════╗ ☆\n")
		escreva("\t\t☆ ❝    JÓIAS CODE     ❞ ☆\n")
		escreva("\t\t☆ ╚═══════════════════╝ ☆\n")
		escreva("\t\t☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆ ☆\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7826; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */