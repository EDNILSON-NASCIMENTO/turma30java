programa
{
//CODIGO INICIAL - ESTRUTURA BASICA 	                                                                            29/07  às  18:15
//CODIGO REFORMULADO - ESTRUTURA DE CARRINHO, TOTALIZADOR DE COMPRA, TOTALIZADOR DE VALORES, RECURSIVIDADE DA LOJA  30/07  às  12:50
//CARRINHO ADICIONADO - NOTA FISCAL FINALIZADA - FORMAS DE PAGAMENTO - IMPOSTOS - RECURSIVIDADE DO CODIGO           30/07  às  18:15
//ADIÇÃO DE COMENTÁRIOS PARA EXPLICAÇÃO DO CÓDIGO.													 01/08  às  02:26
//Correção do valor do imposto e do bug do Estoque Inválido												 01/08  às  23:07
inclua biblioteca Matematica --> Mat
	funcao inicio()
	{
		/*		******************** ATIVIDADE SOLICITADA *******************
		 * Fazer uma loja virtual
		 * Precisa de NOME-SLOGAN-PRODUTOS
		 * 4 Vetores - CODIGO (G01yy) - x = Grupo y = Numero do Produto
		 * 		   - PRODUTO - Grupo Decide
		 * 		   - VALOR - Grupo Decide
		 * 		   - ESTOQUE - 10 de cada produto para todos os grupos (10 produtos, 100 produtos cada grupo)
		 * Loja deve Exibir produtos em vitrine
		 * Loja deve Exibir carrinho com os produtos escolhidos
		 * Após o pedido ser fechado Deve exibir Nota Fiscal
		 * 
		 * Nota Fiscal deve exibir
		 * NOME DA LOJA
			VALOR TOTAL DA COMPRA
			MOSTRA 9% IMPOSTO EM CIMA DO VALOR TOTAL
			OPÇÕES DE PAGAMENTO - 1 A VISTA COM 10% DESCONTO
			OPÇÃO 2 - NO CARTÃO COM ACRESCIMO DE 10%
			OPÇÃO 3 É EM DUAS VEZES COM 15% TOTAL DE ACRESCIMENTO - TEM QUE MOSTRA O VALOR DE CADA PARCELA
			MOSTRA A NOTA FISCAL [SIMULADO] FINAL
			Ao terminar, Deve retornar ao início do programa
			Alterar o estoque com produtos pedidos e funcionar novamente
		 * 
		 */

			//*****VETORES DA LOJA*******
	real VALOR [10]       //Vetor dos preços dos produtos na loja
	inteiro ESTOQUE [10]  //Vetor do estoque dos produtos (devem ser 10 segundo pedido na tarefa)
	cadeia PRODUTO[10]    //Vetor dos produtos exibidos na loja
	cadeia CODIGO[10]     //Vetor dos codigos dos produtos exibidos na loja
			
			//******VETORES DO CARRINHO DE COMPRAS******
	cadeia PRODUTOFINAL[10] //Vetor do produto no carrinho
	real VALORFINAL[10] //Vetor para guardar os preços dos produtos no carrinho
	inteiro QTDEFINAL[10] //Vetor para guardar as quantidades de cada produto comprado
			
			// VARIAVEIS PARA LEITURA
	cadeia compra 				//Leitura do pedido do cliente
	caracter sn = 'S' 			//Variavel para Continuar ou Sair da compra
	inteiro quantidade 			//Quantidade de produtos pedidos
	real carrinho = 0.0 		//Variavel do preço para calcular e colocar no carrinho
	inteiro qtdeCompra =0 		//Variavel de quantidade comprada para finalizar o pedido
	real valorFinal =0.0		//Variavel para calculo do preço final com vários produtos
	real imposto = 0.09 		//Imposto sugerido pela atividade para criação da nota fiscal
	real pgtVista = 0.0 		//Forma de Pagamento (1) - 10% de desconto
	real pgtCartao = 0.0 		//Forma de Pagamento (2) - 10% de acréscimo
	real pgtParcelado =0.0 		//Forma de Pagamento(3) - Parcelado com 15% a mais (tem de aparecer cada parcela)
	real valorFECHADO 			//Variável para calcular o preço final com alterações de imposto e desconto/acrescimo de formas de pagamento
	real custoImposto =0.0
	cadeia y="grupo1" 			//Variável coringa para a última tela aguardar um input, pode ser qualquer coisa desde que seja lida
	inteiro formaDePagamento
	
	para(inteiro x=0;x<10;x++){   //Laço de Repetição para calcular o Código dos produtos
		CODIGO[x]=("g1"+ (x +1)) //Grupo 1 - g1 ou G1 O código deve ser simples pois o produto pode ser pedido por ele
	}
	para(inteiro x=0;x<10;x++){	//Laço de Repetição para calcular o Estoque dos produtos
		ESTOQUE[x]=(10)		//Estoque definido em 10 pode ser alterado a qualquer momento
	}


					//*** INSERÇÃO DOS PRODUTOS NO VETOR DE PRODUTOS
	PRODUTO[0] = "DONNUT NUTELLA"			
	PRODUTO[1] = "DONNUT NINHO"			
	PRODUTO[2] = "DONNUT COCO"			
	PRODUTO[3] = "DONNUT CHOCO"			
	PRODUTO[4] = "DONNUT KIT KAT"			
	PRODUTO[5] = "DONNUT CREME"			
	PRODUTO[6] = "DONNUT CHURROS"			
	PRODUTO[7] = "DONNUT GELEIA"			
	PRODUTO[8] = "DONNUT MORANGO"			
	PRODUTO[9] = "DONNUT FRUTAS"			
					
					
					//*** INSERÇÃO DOS VALORES NO VETOR DE PREÇOS
	VALOR[0] = 12.00
	VALOR[1] = 15.00
	VALOR[2] = 16.00
	VALOR[3] = 13.00
	VALOR[4] = 12.00
	VALOR[5] = 13.00
	VALOR[6] = 10.00
	VALOR[7] = 10.00
	VALOR[8] = 12.00
	VALOR[9] = 11.00



				//******************** INICIO DO CODIGO ***********************
	
	faca{	// Ciclo Faça Repete o Código desde o começo enquanto sn == 's' ou 'S' (Essa variavel é lida a cada ciclo)
		escreva("*******DONNUTIX*******\n\n")			//NOME DA LOJA
		escreva("**Seu Donnut, Nosso mix**\n\n\n")		//SLOGAN DA LOJA
		escreva("DESEJA FAZER COMPRAS? [S ou N]\n")		
		leia(sn)									//sn de leitura, se 's' inicia o programa, 'n' ou qualquer outra coisa finaliza o programa
		se(sn=='s' ou sn=='S'){						// Ciclo condicional, finaliza o programa se sn != 's'
						faca{
								limpa()										// Limpeza de console para melhor usabilidade
								escreva("*******DONNUTIX*******\n\n")				//NOME DA LOJA
								escreva("**Seu Donnut, Nosso mix**\n\n\n")			//SLOGAN DA LOJA
								escreva("COD\tSABORES DONNUT'S\tVALOR\t\tESTOQUE\n\n")	//CABEÇALHO DE VENDA
								
												//*************LAÇO DE REPETIÇÃO PARA FAZER A VITRINE***************
								para(inteiro x=0;x<10;x++){
									escreva(CODIGO[x], "\t", PRODUTO[x],"\t\tR$ ",VALOR[x],"\t\t",ESTOQUE[x],"\n")
								}				// ***************FIM DO LAÇO DE REPETIÇÃO DA VITRINE***************
								escreva("\n***CARRINHO***\n\n")//Escreve Carrinho na Tela 
									para(inteiro x=0;x<10;x++){ //LAÇO DE REPETIÇÃO PARA IMPRIMIR OS PRODUTOS NO CARRINHO. X DEVE SER < QUE O NUMERO DE PRODUTOS PARA NÃO DAR ERRO
									se(PRODUTOFINAL[x]!= ""){ //VERIFICAÇÃO PARA ELIMINAR VARIAVEIS NULAS DO VETOR
									escreva(QTDEFINAL[x], " x  ", PRODUTOFINAL[x],"\t R$",VALORFINAL[x],"\n") //ESCREVE OS PRODUTOS DO CARRINHO NA TELA
							}
						}
								escreva("\n \t       Quais Donnut's deseja comprar? (escreva o código do produto) \n")  //Pergunta para o cliente
								leia(compra)															   //Resposta do Cliente
								para(inteiro x=0;x<10;x++){		//Inicio do laço de repetição, verifica qual produto foi pedido x deve ser < que o numero de produtos no vetor
									se(compra==PRODUTO[x] ou compra == CODIGO[x]){  //Validação se o pedido do cliente é válido, Valida Código ou nome do produto
										escreva("\nCONFIRMA PRODUTO: \n", CODIGO[x], "\t", PRODUTO[x],"\t",VALOR[x],"R$ \t\t \n\n") //Confirmação para inserção do produto no carrinho
										escreva("CERTO?? [S ou N] \n")			//Pergunta ao cliente
										leia(sn)								//Leitura para continuar a compra, se sn != ele pergunta se quer continuar a compra
										se(sn=='s' ou sn=='S'){					//Desvio Condicional para validar a quantidade da compra
											escreva("\nQual a quantidade? \n")		//Pergunta ao cliente
											leia(quantidade)					//Leitura da quantidade
											carrinho = quantidade*VALOR[x]		//Coloca no Carrinho a quantidade para exibição
											escreva ("CARRINHO ATUAL: ", quantidade,"  x  ", PRODUTO[x],"\t Valor Unitário: R$", VALOR[x], "\t TOTAL: R$",carrinho,"\n") //Exibição do carrinho para validação do cliente
											escreva("\nCONFIRMA?? [S ou N]\n")		//Confirmação do cliente
											leia(sn)							//Leitura de sn
											se(sn=='s' ou sn=='S'){				//Desvio condicional para Validação do estoque
												se(quantidade>ESTOQUE[x])		//Verifica se pedido é válido
												{escreva("ESTOQUE INDISPONÍVEL!\n\n") //Caso pedido seja inválido, quebra o Desvio, não faz as alterações futuras e retorna para a tela de compra
												leia(y)
												pare 
												} senao						//Se pedido é válido, faz as alterações
											qtdeCompra+=quantidade				//Coloca a quantidade de compras = quantidade que estava no carrinho
											valorFinal+=carrinho				//Valor final da compra soma com o que foi colocado no carrinho
											ESTOQUE[x]= ESTOQUE[x]-quantidade		//Retira a quantidade solicitada de produtos do estoque
											PRODUTOFINAL[x]=PRODUTO[x]			//Coloca o produto pedido no vetor do carrinho
											se(PRODUTO[x]==PRODUTOFINAL[x]){		//Condicional para validar se o produto já está no carrinho
											VALORFINAL[x]+=carrinho				//Se já estiver, soma o valor atual do carrinho para mostrar atualizado
											QTDEFINAL[x]+=quantidade				//Se já estiver soma a quantidade do carrinho para mostrar atualizado
											}
										}
									}escreva("\nSALDO RESTANTE: ", PRODUTO[x],"\t",ESTOQUE[x],"\n")			//Exibe a quantidade atualizada do estoque do produto pedido
								}
									
							}
								limpa() 																//Limpa a tela para melhor usabilidade
								escreva("\nSUA COMPRA DE ",qtdeCompra," DONNUTS, VALOR ATUAL R$",valorFinal,"  \n")	//Exibe o pedido atual do cliente (quantidade de Donnuts e Valor)
								escreva("\n***CARRINHO***\n\n") 											//Exibe o carrinho atual do cliente
									para(inteiro x=0;x<10;x++){											//Faz o ciclo do carrinho (é o mesmo que exibe o carrinho na tela)
									se(PRODUTOFINAL[x]!= ""){
									escreva(QTDEFINAL[x], " x ", PRODUTOFINAL[x],"\t R$",VALORFINAL[x],"\n")
							}
						}
								escreva("\nDESEJA CONTINUAR COMPRANDO?? [S ou N] \n")			//Valida se o cliente quer continuar
								leia(sn)												//Se sn for != de 's' sai do laço Faça-Enquanto
						
						}enquanto(sn=='s' ou sn =='S')									//Fim do segundo laço Faça-Enquanto
				
				limpa()																	//Limpeza de tela para melhorar usabilidade
				

				escreva("*******DONNUTIX*******\n\n")						//Nome da Loja para Nota Fiscal
				
				para(inteiro x=0;x<10;x++){												//Laço para exibir os produtos pedidos na nota
					se(PRODUTOFINAL[x]!= ""){											//condicional para exibir APENAS os produtos no Vetor de produtos no carrinho
						escreva(QTDEFINAL[x], " ", PRODUTOFINAL[x],"\t R$",VALORFINAL[x],"\n")	//Escreve os produtos do carrinho na tela
					}
				}
				
				escreva("Métodos de pagamento: ")
				escreva("\n1 - À vista com 10% de desconto -")
				escreva("\n2 - No cartão de crédito em 1x (10% de acréscimo)")
				escreva("\n3 - No cartão de crédito em 2x (15% de acréscimo)")
				escreva("\nPor favor, informe a forma de pagamento [1/2/3]: ")
			
			leia (formaDePagamento)
			se(formaDePagamento == 1){
				limpa()
				escreva("*******DONNUTIX*******\n\n")	
				escreva("*** NOTA FISCAL *** \n\n")
				para(inteiro x=0;x<10;x++){												//Laço para exibir os produtos pedidos na nota
					se(PRODUTOFINAL[x]!= ""){											//condicional para exibir APENAS os produtos no Vetor de produtos no carrinho
						escreva(QTDEFINAL[x], " ", PRODUTOFINAL[x],"\t R$",VALORFINAL[x],"\n")	//Escreve os produtos do carrinho na tela
					}
				}
				escreva("\nValor total do produto: R$", valorFinal)
				escreva("\nImpostos sobre nota: R$", Mat.arredondar((valorFinal*0.09), 2))
				escreva("\nValor do desconto: R$", Mat.arredondar(valorFinal*0.1,2))
				valorFECHADO = valorFinal - valorFinal*0.1
				escreva("\nValor Total a pagar: R$" , Mat.arredondar(valorFECHADO,2))
				escreva("\n\nObrigado pela preferência!")
				escreva("\n\nDESEJA CONTINUAR COMPRANDO??[S/N]: ")			//Valida se o cliente quer continuar
				leia(sn)	
				
			}
			se(formaDePagamento == 2){
				limpa()
				escreva("*******DONNUTIX*******\n\n")	
				escreva("*** NOTA FISCAL *** \n\n")
				para(inteiro x=0;x<10;x++){												//Laço para exibir os produtos pedidos na nota
					se(PRODUTOFINAL[x]!= ""){											//condicional para exibir APENAS os produtos no Vetor de produtos no carrinho
						escreva(QTDEFINAL[x], " ", PRODUTOFINAL[x],"\t R$",VALORFINAL[x],"\n")	//Escreve os produtos do carrinho na tela
					}
				}
				escreva("\nValor total do produto: R$",valorFinal)
				escreva("\nImpostos sobre a nota: R$",Mat.arredondar((valorFinal*0.09), 2))
				escreva("\nValor do acréscimo: R$", Mat.arredondar(valorFinal*0.1,2))
				valorFECHADO = valorFinal + valorFinal*0.1
				escreva("\nValor Total a pagar: R$" , Mat.arredondar(valorFECHADO,2))
				escreva("\n\nObrigado pela preferência!")
				escreva("\n\nDESEJA CONTINUAR COMPRANDO??[S/N]: ")			//Valida se o cliente quer continuar
				leia(sn)	
				
			}
			se(formaDePagamento == 3){
				limpa()
				escreva("*******DONNUTIX*******\n\n")	
				escreva("*** NOTA FISCAL *** \n\n")
				para(inteiro x=0;x<10;x++){												//Laço para exibir os produtos pedidos na nota
					se(PRODUTOFINAL[x]!= ""){											//condicional para exibir APENAS os produtos no Vetor de produtos no carrinho
						escreva(QTDEFINAL[x], " ", PRODUTOFINAL[x],"\t R$",VALORFINAL[x],"\n")	//Escreve os produtos do carrinho na tela
					}
				}
				escreva("\nValor total do produto: R$", valorFinal)
				escreva("\nImpostos sobre a nota: R$",Mat.arredondar((valorFinal*0.09), 2))
				escreva("\nValor do acréscimo: R$", Mat.arredondar((valorFinal*0.15),2))
				valorFECHADO = valorFinal + valorFinal*0.15
				escreva("\nValor total da parcela: Duas parcelas de R$", Mat.arredondar((valorFECHADO/2),2))
				escreva("\nValor Total a pagar: R$" , Mat.arredondar(valorFECHADO,2))
				escreva("\n\nObrigado pela preferência!")
				escreva("\n\nDESEJA CONTINUAR COMPRANDO??[S/N]: ")			//Valida se o cliente quer continuar
				leia(sn)	
				
			}
				leia(y)											//Lê variável coringa para cliente finalizar a compra ou retornar e fazer mais compras
				quantidade=0					//Redefine a quantidade de produtos no carrinho
				carrinho=0.0					//Redefine o preço dos produtos no carrinho
				para(inteiro x=0;x<10;x++){		//Laço de repetição para varrer e limpar os vetores do carrinho
					QTDEFINAL[x] = 0			//Limpa o vetor de quantidade
					PRODUTOFINAL[x] = ""		//Limpa o vetor dos produtos e insere um espaço vazio no lugar
					VALORFINAL[x] = 0.0			//Limpa o vetor dos valores
					valorFinal=0.0				//Limpa a variável de Valor
					qtdeCompra=0				//Limpa a variável de quantidade comprada para finalizar o pedido
				}
				limpa()						//Limpa a Tela para melhor usabilidade
				sn='s'						//Define sn para 's' para que o laço não acabe após um pedido
				
				
			}senao{							//Fim da condicional Se, Se o cliente não quiser fazer compras, ele vem para cá
				limpa()						//Limpa a Tela para melhor usabilidade
			escreva("ATE LOGO")					//Mensagem de encerramento do programa
		}
	}enquanto(sn=='s' ou sn=='S')						//Fim do Laço Faça-Enquanto, Se o cliente não quiser fazer compras ele encerra o laço
}
						//*************** FIM DO PROGRAMA **************************

												
/*Comentários inseridos para melhor compreensão do código como um todo
 *
 *Projeto de eCommerce desenhado em Portugol apenas com conhecimento de Vetores, Variáveis, Laços de Repetição, Desvios Condicionais e funções
 *Loja deve apresentar produtos, ter um controle básico de estoque e permitir que o usuário peça vários produtos de uma vez, e controle o estoque para mútiplas compras
 *
 *
 *Código feito por Ester, Flavio, Matheus, Pamela, Paulo e Renata. 
 *Grupo 1 da Turma 30 do Curso de Dev Full Stack Java Junior da Generation Brasil
 */

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 15089; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */