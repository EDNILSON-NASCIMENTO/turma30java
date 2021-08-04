programa
{
	//------------ biblioteca
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//-----------------------------------------------------------------------------------------------
		//------------------------------------------ VARIÁVEIS ------------------------------------------
		//-----------------------------------------------------------------------------------------------
		
		//------------ variáveis da loja
		const cadeia NOME = "Rei do Hamburguer"
		const cadeia SLOGAN = "Matando sua fome para que ela nao mate você!"
		const inteiro qntdProdutos = 10
		cadeia codigo[qntdProdutos]
		const cadeia PRODUTO[qntdProdutos] = {"Royale","Quarteirão","Mentiroso","Grande Rei","Empilhador","Cheddar","Vegetariano","Frango","Abacaxi","Lanche feliz"}
		real valor[qntdProdutos]
		inteiro estoque[qntdProdutos]
		//------------ variáveis da compra
		inteiro produtoEscolhido = 0
		cadeia codigoDigitado = ""
		cadeia codFiscal = ""
		inteiro qntdDigitada = 0
		inteiro qntdTotal = 0
		real total = 0.0
		inteiro carrinho[qntdProdutos]
		caracter comprarSN = 'S'
		caracter continuarCompra = 'S'
		inteiro checarEstoque = 0
		cadeia opcaoPagamento = ""
		real pagamento = 0.0
		real parcela = 0.0
		inteiro checarCodigo = 0
		
		//-----------------------------------------------------------------------------------------------
		//------------------------ PREENCHIMENTO AUTOMÁTICO DAS OPÇÕES DO MENU --------------------------
		//-----------------------------------------------------------------------------------------------
		
		para(inteiro i=0;i<qntdProdutos;i++){
			//Autopreenche o código de todos por G6-i
			codigo[i] = "G6-"+(i+1)
			//Autopreenche o valor de todos como 15.00 ou 12.50, intercalando entre um e outro
			se(i % 2 == 0){
				valor[i] = 15.00
			} senao {
				valor[i] = 12.50
			}
			//Autopreenche o estoque de todos como 10
			estoque[i] = 10
			carrinho[i] = 0
		}

		//-----------------------------------------------------------------------------------------------
		//--------------------------------------  COMEÇAR COMPRA ----------------------------------------
		//-----------------------------------------------------------------------------------------------
		
		escreva(NOME,"\n",SLOGAN,"\n")
		escreva("\nDeseja comprar? [S/N]: ")
		leia(comprarSN)
		
		enquanto(comprarSN == 'S' ou comprarSN == 's'){
			limpa()
			//-----------------------------------------------------------------------------------------------
			//-------------------------------------  COMEÇAR CARRINHO ---------------------------------------
			//-----------------------------------------------------------------------------------------------
			//checa o estoque total
			checarEstoque = 0
			para(inteiro i=0;i<qntdProdutos;i++){
				checarEstoque += estoque[i]
			}

			se(checarEstoque < 1){
				escreva("\nSEM PRODUTOS NO ESTOQUE!\n")
			}
			enquanto(continuarCompra == 'S' ou continuarCompra == 's' e checarEstoque > 0){
				//-----------------------------------------------------------------------------------------------
				//------------------------------------  CÓDIGO PARA COMPRA --------------------------------------
				//-----------------------------------------------------------------------------------------------

				faca {
					//-----------------------------------------------------------------------------------------------
					//--------------------------------------- MENU DE OPÇÕES ----------------------------------------
					//-----------------------------------------------------------------------------------------------
					
					escreva("COD \t PRODUTO \t\t VALOR \t ESTOQUE \n------------------------------------------------\n")
					para(inteiro i=0;i<qntdProdutos;i++){
						escreva(codigo[i],"\t| ",PRODUTO[i],"\t\t| ",valor[i],"\t| ",estoque[i],"\n")
					}
					
					escreva("\nCarrinho")
					escreva("\nCódigo do lanche: ")
					leia(codigoDigitado)
					para(produtoEscolhido=0;produtoEscolhido<qntdProdutos;produtoEscolhido++){
						//Procura o lanche do código digitado e mostra na tela se achar, se não achar, avisa, e pede para digitar outro
						se(codigoDigitado == codigo[produtoEscolhido]){
							checarCodigo = 1
							escreva(codigo[produtoEscolhido]," | ",PRODUTO[produtoEscolhido]," | ",valor[produtoEscolhido]," | ",estoque[produtoEscolhido],"\n")
							pare
						}
					}
					se(checarCodigo != 1){
						limpa()
						escreva("\nEste lanche não existe! Digite um código válido.\n\n")
					}
				} enquanto(checarCodigo != 1)
		
				escreva("Quantidade: ")
				leia(qntdDigitada)

				//-----------------------------------------------------------------------------------------------
				//---------------------------------  TIRAR COMPRAS DO ESTOQUE -----------------------------------
				//-----------------------------------------------------------------------------------------------
				
				// SE O CLIENTE PEDIR UMA QUANTIDADE MAIOR DO QUE A QUE TEM NO ESTOQUE, AVISE
				se(estoque[produtoEscolhido] - qntdDigitada < 0){
					limpa()
					escreva("\nATENÇÃO! Quantidade insuficiente no estoque.\nFavor escolher um produto que tenha no estoque, e uma quantidade disponível dele.\n")
				} senao {
					estoque[produtoEscolhido] = estoque[produtoEscolhido] - qntdDigitada
					carrinho[produtoEscolhido] += qntdDigitada
					qntdTotal += qntdDigitada
					codFiscal = codFiscal + codigoDigitado + " | "
				}
				
				escreva("\nContinuar comprando? [S/N]: ")
				leia(continuarCompra)
				limpa()
			} 

			//Calcula total com base no carrinho
			para(inteiro i=0;i<qntdProdutos;i++){
				se(carrinho[i] > 0){
					total += carrinho[i] * valor[i]
				}
			}
			
			//-----------------------------------------------------------------------------------------------
			//-------------------------------  ESCOLHER FORMA DE PAGAMENTO ----------------------------------
			//-----------------------------------------------------------------------------------------------
			escreva("\n", NOME, "\n")
			escreva("Total: R$",total)
			escreva("\n", "Imposto: R$", mat.arredondar(total*0.09, 2))
			escreva("\nOpção 1: A vista, 10% de desconto")
			escreva("\nOpção 2: 1x no cartão, 10% de acrescimo")
			escreva("\nOpção 3: 2x no cartão, 15% de acrescimo")
			escreva("\nSelecione a opção de pagamento: ")
			leia(opcaoPagamento)
			se (opcaoPagamento =="1"){
				pagamento = total - (total*0.1)
				}
			senao se (opcaoPagamento =="2"){
				pagamento = total + (total*0.1)
				}
			senao se (opcaoPagamento =="3"){
				pagamento = total + (total*0.15)
				parcela = pagamento / 2 
				escreva("parcela:", parcela)
				}
			
			
			//-----------------------------------------------------------------------------------------------
			//------------------------------------  EMITIR NOTA FISCAL --------------------------------------
			//-----------------------------------------------------------------------------------------------
			escreva ("----------NOTA FISCAL-----------------\n")
			escreva(NOME)
			escreva ("\nCódigo dos produtos comprados: ")
			escreva (codFiscal)
			escreva ("\nQuantidade: ", qntdTotal)
			escreva ("\nValor final: R$", pagamento)
			escreva ("\nOpção de pagamento utilizada: ")
			se (opcaoPagamento =="1"){
				escreva ("A vista")
				}
			senao se (opcaoPagamento =="2"){
				escreva ("1x no cartão")
				
				}
			senao se (opcaoPagamento =="3"){
				escreva ("2x no cartão\nValor da parcela: ",parcela)
				}
			escreva ("\n----------------------------------------")
			escreva("\nDigite qualquer coisa para continuar")
			leia(comprarSN)
			
			para(inteiro i=0;i<qntdProdutos;i++){
				carrinho[i] = 0
			}
			limpa()
			escreva(NOME,"\n",SLOGAN)
			escreva("\nDeseja comprar? [S/N]: ")
			leia(comprarSN)
		}
		escreva("\nAté breve!!\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7781; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */