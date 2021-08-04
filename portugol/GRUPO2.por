programa
{
	inclua biblioteca Calendario
	inclua biblioteca Tipos
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Texto

	// constante que dita o tamanho de todos os vetores e matrizes presentes no código. Relacionada com a diversidade de produtos.
	const inteiro DIVERSIDADE_PRODUTOS = 10

	// constante para o estoque inicial dos produtos. (tendo em mente que todos começam com a mesma quantidade).
	const inteiro ESTOQUE_INICIAL = 10

	// constante que dita a quantidade máxima de notas fiscais que podem ser salvas.
	const inteiro LIMITE_NOTAS = 4

	//matrizes e vetores que armazenam as notas fiscais passadas e todas as suas informações.
	inteiro xVetor[LIMITE_NOTAS], estoqueSelecionadoMatriz[LIMITE_NOTAS][DIVERSIDADE_PRODUTOS], quantidadeFaturasVetor[LIMITE_NOTAS]
	real valorFaturaVetor[LIMITE_NOTAS]
	cadeia codigoMatriz[LIMITE_NOTAS][DIVERSIDADE_PRODUTOS], valorMatriz[LIMITE_NOTAS][DIVERSIDADE_PRODUTOS], produtoMatriz[LIMITE_NOTAS][DIVERSIDADE_PRODUTOS]
	
	// variáveis para ajuste do dia do calendário
	cadeia diaCalendario, mesCalendario, diaCalendarioVetor[LIMITE_NOTAS], mesCalendarioVetor[LIMITE_NOTAS],anoCalendarioVetor[LIMITE_NOTAS]
	
	inteiro horaAtualVetor[LIMITE_NOTAS], minutoAtualVetor[LIMITE_NOTAS]


	// variáveis apenas para auxiliar na formatação dentro da Nota Fiscal.
	cadeia formataEstoqueSelecionado[DIVERSIDADE_PRODUTOS],
	formataValorTotal[DIVERSIDADE_PRODUTOS],
	formataImposto[DIVERSIDADE_PRODUTOS],
	formataCodigo

	inteiro 
	formataValorTotalNumero,
	formataImpostoNumero

	funcao inicio() {
		// variáveis do código e produto:
		cadeia codigo[DIVERSIDADE_PRODUTOS], produto[DIVERSIDADE_PRODUTOS], codigoDigitado

		// variável auxiliar para saber se o valor em "leia(quantidadeCompra) é inteiro ou não".
		cadeia auxQuantidadeCompra
		
		//variáveis relacionadas ao interesse de fazer, continuar as compras ou voltar ao início:
		cadeia fazerCompras, continuarCompras = "S", respostaVoltarInicio = "N"

		/* vetor do preço dos produtos: 
		 *  NOTA: está em cadeia apenas para auxiliar na formatação da página
		 *  colocando um espaço no fim do número, mas depois será convertido. Caso
		 *  ocorra uma troca, valor é usado na função página de compras e na conta
		 *  do valor total da compra.
		*/
		cadeia valor[DIVERSIDADE_PRODUTOS]

		// variáveis com os valores: total da compra e fatura a pagar.
		real valorTotalCompra = 0.00, valorFatura = 0.0

		// quantidade de parcelas do pagamento
		inteiro quantidadeFaturas = 0
		
		// variáveis do estoque e vetor do carrinho:
		inteiro estoqueSelecionado[DIVERSIDADE_PRODUTOS], quantidadeEstoque = ESTOQUE_INICIAL, quantidadeCompra = 0, carrinho[DIVERSIDADE_PRODUTOS], estoqueInicial[DIVERSIDADE_PRODUTOS] 
		
		// variáveis das respostas:
		inteiro  opcaoPagamento
		
		// variável auxiliar dos índices e laços:
		inteiro x = 0

		// variável para validar o código digitado
		logico validarCodigo = verdadeiro

		// variável para saber se o carrinho está vazio.
		inteiro carrinhoVazio = 0

		// variável para saber se já ocorreu alguma compra.
		logico primeiraCompra = verdadeiro

		//descobrir qual nota fiscal é:
		inteiro contadorNotaFiscal = 1
		
		cadeia numeroNotaFiscal = "0"

		produto[0] = "Bola de volei          "
		produto[1] = "Calça legging          "
		produto[2] = "Caneleira de peso 5kg  "
		produto[3] = "Chuteira feminina      "
		produto[4] = "Chuteira masculina     "
		produto[5] = "Halter emborrachado 2kg"
		produto[6] = "Luva para goleiro      "
		produto[7] = "Prancha de surf        "
		produto[8] = "Regata para musculação "
		produto[9] = "Skate                  "

		valor[0] = " 54.99" 
		valor[1] = " 69.99"
		valor[2] = " 59.99"
		valor[3] = "139.99"
		valor[4] = "139.99"
		valor[5] = " 49.99"
		valor[6] = "159.99"
		valor[7] = "889.99"
		valor[8] = " 29.99"
		valor[9] = "249.99"

		//valores para estoque inicial e código:
		para(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
			codigo[x] = "G2-"+(x+1)	
			estoqueSelecionado[x] = 0
			estoqueInicial[x] = ESTOQUE_INICIAL
		}		
	
		// (faça - enquanto) responsável pelo retorno ao início da página, após a compra.
		faca {
			limpa()
			cabecalho(3)
	
			//(laço faça e condicional se) responsáveis pelas respostas [S/N].
			faca {
				se (numeroNotaFiscal == "0") {
					escreva("  ► Deseja fazer compras?[S/N]: ")
					leia(fazerCompras)	
				}
				
				senao {
					
					se (contadorNotaFiscal == LIMITE_NOTAS) {
						faca {
			
							
							escreva("\n ► Você fez muitas compras hoje!!\n")
							escreva(" ► Volte amanhã para ver o estoque atualizado.\n")
							escreva(" ► Deseja visualizar suas notas fiscais anteriores? [V]\n")
							escreva(" ► Ou digite [N] para sair: ")
							leia(fazerCompras)
							se (Texto.caixa_alta(fazerCompras) != "N" e Texto.caixa_alta(fazerCompras) != "V") {
								limpa()
								cabecalho(3)
								escreva("Resposta inválida.\n")
							}
						} enquanto (Texto.caixa_alta(fazerCompras) != "N" e Texto.caixa_alta(fazerCompras) != "V") 
							
					}
					senao {
						escreva("  ► Deseja fazer compras?[S/N]\n ")	
						escreva(" ► Ou deseja visualizar sua(s) nota(s) fiscal(is) anterior(es)? [V]: ")
						leia(fazerCompras)
					}
					se (Texto.caixa_alta(fazerCompras) == "N") {
						respostaVoltarInicio = "N"
					}
					
					se (Texto.caixa_alta(fazerCompras) == "V"){
						faca {
							escreva(" Digite o número da nota fiscal (exemplo: 1, 2, 3...) de acordo com a data de emissão: ")
							leia(numeroNotaFiscal)
							se (Tipos.cadeia_para_inteiro(numeroNotaFiscal, 10) >= contadorNotaFiscal){
								escreva("\n Digite um valor válido!\n Você só tem ", contadorNotaFiscal-1," nota(s) fiscal(is).\n")
							}
							senao se (Tipos.cadeia_e_inteiro(numeroNotaFiscal, 10) == falso){
								escreva("\n Digite um valor válido! Um número inteiro: ")
							}
							senao se (Tipos.cadeia_para_inteiro(numeroNotaFiscal, 10) <= contadorNotaFiscal) {
								notaFiscal(x, estoqueSelecionado, valorFatura, quantidadeFaturas, codigo, valor, produto, Tipos.cadeia_para_inteiro(numeroNotaFiscal, 10), contadorNotaFiscal) 
								escreva("\n Voltar para o ínicio?[S/N]: ")
								leia(respostaVoltarInicio)
							}
							
						} enquanto (Tipos.cadeia_e_inteiro(numeroNotaFiscal, 10) == falso ou Tipos.cadeia_para_inteiro(numeroNotaFiscal, 10) >= contadorNotaFiscal )
					}
				}
				
				primeiraCompra = verdadeiro
				
				se (Texto.caixa_alta(fazerCompras) == "S") {
	
					faca {
	
						// chama a página de compra durante a compra.
						paginaDeCompras(x, codigo, produto, valor, estoqueInicial, carrinho, estoqueSelecionado, carrinhoVazio)
	
						// próxima pergunta é referente a continuar comprando, só deve aparecer após a primeira compra.
						/* (faça - enquanto) responsável pelo retorno caso a resposta 
						 *  de continuarCompras seja inválida, forçando o usuário a digitar certo.
						*/
						faca {
							se (primeiraCompra == falso){
								escreva("  ► Continuar a compra? [S/N]: ")
								leia(continuarCompras)
							}
							se (Texto.caixa_alta(continuarCompras) == "S" ou primeiraCompra == verdadeiro){
				
								// (laço faça) valida se o código digitado existe.
								faca {
									se (validarCodigo == falso) {
										escreva("  Código inválido!")
									}
									//a variável recebe falso para se caso entrar no próximo "se".
									validarCodigo = falso
			
									// momento de escolher o produto desejado.
									escreva("\n  ► Digite o código do produto desejado: ")
									leia(codigoDigitado)
								
					
									// (laço para e condicional se) responsáveis por escrever o produto do código solicitado.
									para(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) { 
										
										se(Texto.caixa_alta(codigoDigitado) == codigo[x]) {
											validarCodigo = verdadeiro
											quantidadeCompra = 0
											linha(4)
											escreva("║ ", codigo[x],"\t│ ",produto[x],"\t│ ",valor[x],"\t  │ ",estoqueInicial[x],"\t\t\t║\n")
											linha(5)
											
											// (laço faça - enquanto e condicional se) responsáveis pela validação do estoque.
											faca {
												se (quantidadeCompra > estoqueInicial[x]) {
													linha(10)
													escreva("Quantidade indisponível.\n" , "Temos somente ", estoqueInicial[x] ," no estoque!\n")
												}
												se (estoqueSelecionado[x] != 0) {
												escreva("  ► Produto já escolhido! Altere a quantidade desejada: ")
												} 
												
												faca {
													escreva("\n  ► Digite a quantidade desejada: ")
													leia(auxQuantidadeCompra)
													se (Tipos.cadeia_e_inteiro(auxQuantidadeCompra, 10) == falso ){
														escreva("\n  Digite uma valor válido para quantidade!\n ")
													}
												} enquanto(Tipos.cadeia_e_inteiro(auxQuantidadeCompra, 10) == falso)
												
												quantidadeCompra = Tipos.cadeia_para_inteiro(auxQuantidadeCompra, 10)
												
												
												
											} enquanto (quantidadeCompra > estoqueInicial[x])
				
											// os produtos selecionados para a compra são retirados do estoque:
											estoqueSelecionado[x] = quantidadeCompra
											carrinho[x] = 1
											primeiraCompra = falso
										}
										
									}
								} enquanto (validarCodigo == falso)
							}
							
							senao se (Texto.caixa_alta(continuarCompras) == "N") {
								
								para (x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
									// aqui é necessário converter o valor para um número real.
									valorTotalCompra += (Tipos.cadeia_para_real(valor[x]) * estoqueSelecionado[x])
								}
								
								// valor total da compra:
								linha(8)
								escreva("║ ► Valor total da compra: R$ ", Mat.arredondar(valorTotalCompra, 2), "\t\t\t\t\t\t║\n")
								escreva("║   Imposto de 9% embutido no valor total: R$ ", Mat.arredondar(((valorTotalCompra / 100) * 9), 2), "\t\t\t\t║\n")
								linha(9)
								escreva("║ ► Opções de pagamento:\t\t\t\t\t\t\t║\n")
								escreva("║     1 - Pagamento à vista com 10% de desconto: R$ ", Mat.arredondar(((valorTotalCompra / 100) * 90), 2), "\t\t\t║\n")
								escreva("║     2 - No cartão com acréscimo de 10%: R$ ", Mat.arredondar(((valorTotalCompra / 100) * 110), 2), "\t\t\t\t║\n")
								escreva("║     3 - 2x com 15% de acréscimo, valor de cada parcela: R$ ", Mat.arredondar(((valorTotalCompra / 200) * 115), 2), "\t\t║\n")
								linha(7)
								faca {
									escreva("Escolha a sua opção de pagamento: ")
									leia(opcaoPagamento)
									se (opcaoPagamento != 1 e opcaoPagamento != 2 e opcaoPagamento != 3) {
										escreva("Digite uma opção válida!\n")	
									}
								} enquanto(opcaoPagamento != 1 e opcaoPagamento != 2 e opcaoPagamento != 3)
								se (opcaoPagamento == 1) {
									valorFatura = Mat.arredondar(((valorTotalCompra / 100) * 90), 2)
									quantidadeFaturas = 0
								}
								senao se (opcaoPagamento == 2) { 
									valorFatura = Mat.arredondar(((valorTotalCompra / 100) * 110), 2)
									quantidadeFaturas = 1
								}
								senao {
									valorFatura = Mat.arredondar(((valorTotalCompra / 200) * 115), 2)
									quantidadeFaturas = 2
								}
							}
							senao {
								escreva("\n  Digite um valor válido para a resposta!\n")
							}
							
						} enquanto(Texto.caixa_alta(continuarCompras) != "S" e Texto.caixa_alta(continuarCompras) != "N")
					
					} enquanto(Texto.caixa_alta(continuarCompras) == "S")
	
					
	
					para (x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
					// novo estoque inicial é formado pelos produtos que não foram retirados da compra anterior.
					estoqueInicial[x] -= estoqueSelecionado[x]
	
					// no fim da compra o carrinho se esvazia
					carrinho[x] = 0 
					}
	
					paginaDeCompras(x, codigo, produto, valor, estoqueInicial, carrinho, estoqueSelecionado, carrinhoVazio)

					
					notaFiscal(x, estoqueSelecionado, valorFatura, quantidadeFaturas, codigo, valor, produto, Tipos.cadeia_para_inteiro(numeroNotaFiscal, 10)+1, contadorNotaFiscal) 
					contadorNotaFiscal ++
					numeroNotaFiscal = Tipos.inteiro_para_cadeia(contadorNotaFiscal-1, 10)
					
					
					faca {
						escreva("\n Voltar para a página inicial? [S/N]: ")
						leia(respostaVoltarInicio)
						
						se (Texto.caixa_alta(respostaVoltarInicio) == "N") {
							escreva("  ATÉ BREVE!!!")
							pare
						}
						senao se (Texto.caixa_alta(respostaVoltarInicio) != "S") {
							escreva("Digite uma resposta válida!\n")
						}
					} enquanto(Texto.caixa_alta(respostaVoltarInicio) != "N" e Texto.caixa_alta(respostaVoltarInicio) != "S")
					
				}
				
				// condicional responsável pela respostas [S/N]
				senao se (Texto.caixa_alta(fazerCompras) == "N") {
					escreva("  ATÉ BREVE!!!")
					pare
				} 
				senao {
					limpa()
					cabecalho(3)
					escreva("  Digite uma resposta válida!\n")
				}
				
			//(laço faça - enquanto) responsável pelas respostas [S/N] do começo.
			} enquanto (Texto.caixa_alta(fazerCompras) != "N" e Texto.caixa_alta(fazerCompras) != "S")

		//a compra foi finalizada, então quando retornar ao início, o estoque selecionado será igual a zero.
		para (x=0 ; x < DIVERSIDADE_PRODUTOS ; x++){
			estoqueSelecionado[x] = 0
		}
		// a compra foi finalizada, então quando retornar ao início, a resposta continuar compras volta a ser SIM.
		continuarCompras = "S"

		//(laço faça - enquanto) responsável por retornar ao início após a compra.	
		} enquanto(Texto.caixa_alta(respostaVoltarInicio) == "S")
		
	}
	
	//função que chama o cabeçalho da loja sempre que aparece:
	funcao cabecalho(inteiro linhaPrincipal) {
		     escreva("\t\t      ► PORTO GOL ACESSÓRIOS ESPORTIVOS ◄\n")
			escreva("\t Desconto real, qualidade constante, satisfação por inteiro !")
			linha(linhaPrincipal)
	}

	//função que chama a linha de separações:
	funcao linha(inteiro tipoLinha) {
		se (tipoLinha == 1) {
			escreva("╟───────┴───────────────────────────────┴─────────────────┴─────────────────────╢\n")
		}
		senao se (tipoLinha == 6) {
			escreva("╟───────┼───────────────────────────────┼─────────────────┼─────────────────────╢\n")
		}
		senao se(tipoLinha == 0) {
			escreva("║-------------------------------------------------------------------------------║\n")
		}
		senao se (tipoLinha == 3) {
			escreva("\n═══════════════════════════════════════════════════════════════════════════════\n")
		}
		senao se (tipoLinha == 4) {
			escreva("\n╔═══════╤═══════════════════════════════╤═════════════════╤═════════════════════╗\n")
		}
		senao se (tipoLinha == 5) {
			escreva("╚═══════╧═══════════════════════════════╧═════════════════╧═════════════════════╝\n")
		}
		senao se (tipoLinha == 7) {
			escreva("╚═══════════════════════════════════════════════════════════════════════════════╝\n")
		}
		senao se (tipoLinha == 8) {
			escreva("╔═══════════════════════════════════════════════════════════════════════════════╗\n")
		
		}
		senao se (tipoLinha == 9) {
			escreva("╟───────────────────────────────────────────────────────────────────────────────╢\n")
		}
		senao se (tipoLinha == 10) {
			escreva("─────────────────────────────────────────────────────────────────────────────────\n")
		}
	}
	
	funcao paginaDeCompras (inteiro x, cadeia codigo[], cadeia produto[], cadeia valor[], inteiro estoqueInicial[], inteiro carrinho[], inteiro estoqueSelecionado[], inteiro carrinhoQuantidade ) {
		
		limpa()
		cabecalho(4)
		escreva("║ Cód\t│ Produto\t\t\t│ Valor\t\t  │ Estoque\t\t║\n")
		linha(6)
					
		/* (laço para) que cria as informações presentes abaixo do menu: 
		códigos, produtos, valores e estoque.*/
		para(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) { 
						
			escreva("║ ", codigo[x],"\t│ ",produto[x],"\t│ ",valor[x],"\t  │ ",estoqueInicial[x],"\t\t\t║\n")	
					
		}
					
		// carrinho de compras.
		linha(1)
		escreva("║ Carrinho de compras\t\t\t\t\t\t\t\t║\n")
		escreva("║         ┌┐\t\t\t\t\t\t\t\t\t║\n")
		escreva("║  ┌┬┬┬┬┬┐⌡ \t\t\t\t\t\t\t\t\t║\n")
		
		carrinhoQuantidade = 0
		
		para (x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
			se (carrinho[x] == 1 e estoqueSelecionado[x] != 0) {
					carrinhoQuantidade++
			}
		}
		se (carrinhoQuantidade == 0) {
			escreva("║  └___/ \t\t\t\t► Seu carrinho está vazio ◄\t\t║\n")
		}
		senao {
			escreva("║  └___/ \t\t\t\t► Adicione mais produtos! ◄\t\t║\n")
		}
		escreva("║    σ  σ [",carrinhoQuantidade, "]\t\t\t\t\t\t\t\t\t║\n")
		escreva("║\t\t\t\t\t\t\t\t\t\t║\n")
		para(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
			se (carrinho[x] == 1 e estoqueSelecionado[x] != 0) {
			escreva("║ ", codigo[x],"\t│ ",produto[x],"\t│ ",valor[x],"\t  │[", estoqueInicial[x], "] QTDE - \t", estoqueSelecionado[x], "\t║\n")
			}
		}
		linha(7)
		
		
	}
	funcao notaFiscal (inteiro x, inteiro estoqueSelecionado[], real valorFatura, inteiro quantidadeFaturas, cadeia codigo[], cadeia valor[], cadeia produto[], inteiro numeroNotaFiscal, inteiro contadorNotaFiscal) {
	
		se (numeroNotaFiscal == contadorNotaFiscal) {
			
			anoCalendarioVetor[numeroNotaFiscal] = Tipos.inteiro_para_cadeia(Calendario.ano_atual(), 10)
			horaAtualVetor[numeroNotaFiscal] = Calendario.hora_atual(falso)
			minutoAtualVetor[numeroNotaFiscal] = Calendario.minuto_atual()
			
			se (Calendario.dia_mes_atual() < 10) {
				diaCalendario = Tipos.inteiro_para_cadeia(Calendario.dia_mes_atual(), 10)
				diaCalendario = (0+diaCalendario)
			}
			senao {
				diaCalendario = Tipos.inteiro_para_cadeia(Calendario.dia_mes_atual(), 10)
			}
			se (Calendario.mes_atual() < 10) {
				mesCalendario = Tipos.inteiro_para_cadeia(Calendario.mes_atual(), 10)
				mesCalendario = (0+mesCalendario)
			}
			senao {
				mesCalendario = Tipos.inteiro_para_cadeia(Calendario.mes_atual(), 10)
			}
		
	
			para (inteiro colunaMatriz = 0 ; colunaMatriz < DIVERSIDADE_PRODUTOS ; colunaMatriz ++){
				estoqueSelecionadoMatriz[numeroNotaFiscal][colunaMatriz] = estoqueSelecionado[colunaMatriz]
				
				codigoMatriz[numeroNotaFiscal][colunaMatriz] = codigo[colunaMatriz]
				
				valorMatriz[numeroNotaFiscal][colunaMatriz] = valor[colunaMatriz]
				
				produtoMatriz[numeroNotaFiscal][colunaMatriz] = produto[colunaMatriz]
			}	
			
			xVetor[numeroNotaFiscal] = x
			
			valorFaturaVetor[numeroNotaFiscal] = valorFatura
			
			quantidadeFaturasVetor[numeroNotaFiscal] = quantidadeFaturas
			
			mesCalendarioVetor[numeroNotaFiscal] = mesCalendario
			
			diaCalendarioVetor[numeroNotaFiscal] = diaCalendario

			
		}		
	escreva("\n ► NOTA FISCAL ---------------------------------------------------------------\n")
	escreva("┌───────────────────────────────────────────────────────────────────────────────┐\n")
	escreva("│ ┌──────────────────┬────────────────────┬───────────────────────────────────┐ │\n")
	escreva("│ │                  │ DANFE              │ Código de Barras                  │ │\n")
	escreva("│ │ Porto-Gol.com.br │ 0 - entrada        │ ||| ||| | ||||| || || ||||| ||    │ │\n")
	escreva("│ │                  │ 1 - saída          │                                   │ │\n")
	escreva("│ └──────────────────┴────────────────────┴───────────────────────────────────┘ │\n")
	escreva("│ ┌─────────────────────────────┬─────────────────────────────────────────────┐ │\n")
	escreva("│ │ Natureza da operação        │ Número de Protocolo                         │ │\n")
	escreva("│ │ Venda de mercadorias        │ xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx     │ │\n")
	escreva("│ └─────────────────────────────┴─────────────────────────────────────────────┘ │\n")
	escreva("│  Destinatário/ remetente                                                      │\n")
	escreva("│ ┌───────────────────────┬─────────────────────────┐┌────────────────────────┐ │\n")
	escreva("│ │ Nome/ Razão Social    │ CPF                     ││ Data de emissão        │ │\n")
	escreva("│ │ XXXXXXXXXXXXXX        │ XXX.XXX.XXX-XX          ││ \t", diaCalendarioVetor[numeroNotaFiscal],"/",mesCalendarioVetor[numeroNotaFiscal], "/", anoCalendarioVetor[numeroNotaFiscal], "\t      │ │\n")
	escreva("│ ├───────────────────┬───┴─────────────┬───────────┤├────────────────────────┤ │\n")
	escreva("│ │ Endereço          │ Bairro/ Distrito│ CEP       ││ Data deSaída/ Entrada  │ │\n")
	escreva("│ │ xxx xxxxxxxxxxx   │ xxxx xxxx       │ xxxxx-xxx ││ \t", diaCalendarioVetor[numeroNotaFiscal],"/",mesCalendarioVetor[numeroNotaFiscal], "/", anoCalendarioVetor[numeroNotaFiscal], "\t      │ │\n")
	escreva("│ ├────────────┬────┬─┴──────────┬──────┴───────────┤├────────────────────────┤ │\n")
	escreva("│ │ Município  │ UF │ CEP        │ Fone             ││ Hora da Saída          │ │\n")
	escreva("│ │ xxxxxxx    │ XX │ xxxxx-xxx  │ xxxxx-xxxx       ││ \t",horaAtualVetor[numeroNotaFiscal] ,":", minutoAtualVetor[numeroNotaFiscal],"\t\t      │ │\n")
	escreva("│ └────────────┴────┴────────────┴──────────────────┘└────────────────────────┘ │\n")
	escreva("│  Valor das Faturas                                                            │\n")
	escreva("│ ┌───────────┬──────────────────────────────────┬────────────────────┬───────┐ │\n")
	escreva("│ │ Número    │ Vencimento                       │ Valor              │ QTD   │ │\n")
	escreva("│ │ XXXXXX    │ xx/xx/xxxx                       │ ", valorFaturaVetor[numeroNotaFiscal],"\t      │\t",quantidadeFaturasVetor[numeroNotaFiscal], "     │ │\n")
	escreva("│ └───────────┴──────────────────────────────────┴────────────────────┴───────┘ │\n")
	escreva("│  Itens da Nota Fiscal                                                         │\n")
	escreva("│ ┌───────┬─────────────────────────┬──────┬──────────┬───────────┬───────────┐ │\n")
	escreva("│ │ Cód.  │ Produto                 │ QTDE.│ Valor Un.│ Valor Tot.│ Imposto   │ │\n")
					

					
	para(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
		
		se (estoqueSelecionadoMatriz[numeroNotaFiscal][x] != 0) {
						
				se (numeroNotaFiscal == contadorNotaFiscal) {
					se (x <= 8) {
					formataCodigo = codigoMatriz[numeroNotaFiscal][x] + " "	
					}
					senao {
					formataCodigo = codigoMatriz[numeroNotaFiscal][x]
					}
										
					se (estoqueSelecionadoMatriz[numeroNotaFiscal][x] <= 9) {
					formataEstoqueSelecionado[x] = estoqueSelecionadoMatriz[numeroNotaFiscal][x] + " "
					}
					senao {
					formataEstoqueSelecionado[x] = estoqueSelecionadoMatriz[numeroNotaFiscal][x] +""	
					}
			
					formataValorTotal[x] = Tipos.real_para_cadeia(Mat.arredondar((Tipos.cadeia_para_real(valorMatriz[numeroNotaFiscal][x]) * estoqueSelecionadoMatriz[numeroNotaFiscal][x]), 2))
										
					formataImposto[x] = Tipos.real_para_cadeia(Mat.arredondar(((Tipos.cadeia_para_real(valorMatriz[numeroNotaFiscal][x]) / 100) * 9), 2))
										
			
					formataValorTotalNumero = Texto.numero_caracteres(Tipos.real_para_cadeia(Mat.arredondar((Tipos.cadeia_para_real(valorMatriz[numeroNotaFiscal][x]) * estoqueSelecionado[x]), 2)))
					formataImpostoNumero = Texto.numero_caracteres(Tipos.real_para_cadeia(Mat.arredondar(((Tipos.cadeia_para_real(valorMatriz[numeroNotaFiscal][x]) / 100) * 9), 2)))
		
					enquanto (formataValorTotalNumero <= 7) {
					formataValorTotalNumero ++
					formataValorTotal[x] += " "	
					}
					enquanto (formataImpostoNumero <= 4) {
					formataImpostoNumero ++
					formataImposto[x] += " "		
					}
				}					
								
			escreva("│ │ ", formataCodigo," │ ",produtoMatriz[numeroNotaFiscal][x]," │  ", formataEstoqueSelecionado[x], "  │  ",valorMatriz[numeroNotaFiscal][x],"  │ ", formataValorTotal[x],"  │ ", formataImposto[x] ,"     │ │\n")
			}
	}
	escreva("│ └───────┴─────────────────────────┴──────┴──────────┴───────────┴───────────┘ │\n")
	escreva("└───────────────────────────────────────────────────────────────────────────────┘\n")
					
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 23646; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */