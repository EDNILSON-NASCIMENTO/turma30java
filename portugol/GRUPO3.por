programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{				
		inicioPrograma()	
	}	
	
	funcao inicioPrograma()
	{
			cadeia verificarRepeticao[10] = {"","","","","","","","","",""}
			cadeia codProduto[10]
			cadeia produto[] = { "Glutamina", "Vitamina C", "Regata Cav", "Tenis Sports", "Whey Prot", "Snacks Div", "C. Legging", "Camiseta", "BCAA CAPS", "Corda P."}
			real preco[] = { 30.00, 15.00, 45.00, 100.00, 75.00, 12.00, 80.00, 24.00, 42.00, 20.00 }
			inteiro estoque[10]
			inteiro carrinhoCompras[10]
			caracter desejaEntraNoSite
			inteiro contador = 0
			cadeia auxCod 
			inteiro auxQuant = 0
			caracter continua = 's'
			real total = 0.0
			inteiro opcao = 0

			insereBanner() 
			escreva("\nDeseja entrar no site [S/N] ?: ")
			leia(desejaEntraNoSite)
			limpa ()
			
			para(contador = 0 ; contador < 10 ; contador++){
				codProduto[contador] = "G3-" + (contador + 1)
				estoque[contador] = 10
				
			}

			se(desejaEntraNoSite == 'S' ou desejaEntraNoSite == 's')
			{
				tituloTabela()
				para(contador = 0 ; contador < 10 ; contador++){
					escreva ("♥     ",codProduto[contador]," \t♥\t", produto[contador],"\t♥\t", preco[contador],"\t   ♥\t  ",estoque[contador],"\t   ♥\n")
					linha(verdadeiro)
				}

				faca{
					escreva("\nSelecione o código do produto : ")
					leia(auxCod)
					limpa()
					para(contador = 0 ; contador < 10 ; contador++){
						se(verificarRepeticao[contador] == auxCod){
							escreva("\nVocê já selecionou esse produto, deseja alterá-lo [S/N] ?  ")
							leia (continua)
							se (continua == 's' ou continua == 'S'){

							}senao{
								 tituloTabela()
								 para(contador = 0 ; contador < 10 ; contador++){
									escreva ("♥     ",codProduto[contador]," \t♥\t", produto[contador],"\t♥\t", preco[contador],"\t   ♥\t  ",estoque[contador],"\t   ♥\n")
									linha(verdadeiro)
								}
								 escreva("digite o código de outro produto: ")
								 leia(auxCod)
						// Empaquei aqui no senao, n sei como fazer o programa funcionar
						// se a pessoa escolher pra alterar o produto
						}
						}
						se(auxCod == codProduto[contador]){
							/*Aqui eu to pegando o código do produto DEPOIS que ele foi
							digitado e armazenando no vetor verificarRepeticaoque vai 
							ficar checando	se o produto escolhido n vai se repetir*/
							verificarRepeticao[contador] = codProduto[contador]
							escreva("Código : ",codProduto[contador],"\nProduto : ",produto[contador],"\nValor : ",preco[contador],"\nEstoque : ",estoque[contador])
							escreva("\n\nDigite a quantidade desejada : ")
							leia(auxQuant)
							se (auxQuant > estoque[contador]){
								escreva ("Digite quantidade disponível no estoque: ")
								escreva("\n\nDigite a quantidade desejada : ")
								leia(auxQuant)
							}
							estoque[contador] -= auxQuant
							pare						
						}							
					}
					para (contador = 0; contador < 10; contador++){
						se (auxCod == codProduto[contador]){
							total += auxQuant * preco[contador]
							carrinhoCompras[contador] += auxQuant
							tituloCarrinho()
							para (contador = 0; contador < 10; contador++){
								se(carrinhoCompras[contador] != 0){
									escreva ("♥     ",codProduto[contador]," \t♥\t",produto[contador],"\t♥\t",preco[contador],"\t   ♥\t  ",carrinhoCompras[contador],"\t♥\t",carrinhoCompras[contador] * preco[contador],"\t    ♥\n")
									linha(falso)
								}
							}
						}
					}
					escreva("\nDeseja continuar a compra [S/N] ?: ")
					leia(continua)
					limpa()
					para(contador = 0 ; contador < 10 ; contador++){						
						se (continua == 'S' ou continua == 's'){
							escreva ("\n♥     ",codProduto[contador]," \t♥\t",produto[contador],"\t♥\t",preco[contador],"\t   ♥\t  ",estoque[contador],"\t   ♥\n")
							linha(verdadeiro)
						}
					}
				}enquanto(continua == 'S' ou continua == 's')
				
					//compra finalizada, mostrando o carrinho finalopções de pagamento
					limpa()
					insereBanner()
					tituloCarrinho()
					para (contador = 0; contador < 10; contador++){
						se(carrinhoCompras[contador] != 0){
							escreva ("♥     ",codProduto[contador]," \t♥\t",produto[contador],"\t♥\t",preco[contador],"\t   ♥\t  ",carrinhoCompras[contador],"\t♥\t",carrinhoCompras[contador] * preco[contador],"\t    ♥\n")						
						}
					}
					escreva("\nVALOR DA COMPRA : ",total)	
					escreva("\n\nFormas de Pagamento : \nOpção [1] - Dinheiro á vista c/ 10% de desconto\nOpção [2] - Cartão á vista c/ 10% de acréscimo\nOpção [3] - Cartão em 2x c/ 15% de acréscimo\n\nDigite a opção de pagamento : ")
					leia(opcao)
					se(opcao == 1){
						escreva("\n")
						escreva("Forma de pagamento : Dinheiro á vista\n")
						escreva("\n")
						escreva("============================================== Nota Fiscal ==============================================\n")
						para (contador = 0; contador < 10; contador++){
						se(carrinhoCompras[contador] != 0){
							escreva ("♥     ","Código"," \t♥\t","Produto"," \t♥\t","Valor"," \t   ♥\t  ","Quantidade"," \t♥\t","Valor Total","     ♥\n")
						escreva ("♥     ",codProduto[contador]," \t♥\t",produto[contador]," \t♥\t",preco[contador]," \t   ♥\t       ",carrinhoCompras[contador],"    \t♥\t   ",carrinhoCompras[contador] * preco[contador],"        ♥\n")
					}}
						escreva ("\n")
						escreva ("Total com 10% de desconto= R$" , total*0.9,"\n")
						escreva ("Imposto de 9% = R$",(total*0.09),"\n")
						escreva ("Total com imposto de 9% = R$",mat.arredondar(((total*0.9)*1.09),2),"\n")
						escreva("=========================================================================================================\n")
					}
						se(opcao ==2){
							escreva("\n")
							escreva("Forma de pagamento : Cartão á vista" , "\n")
							escreva("\n")
							escreva("============================================== Nota Fiscal ==============================================\n")
						para (contador = 0; contador < 10; contador++){
						se(carrinhoCompras[contador] != 0){
							escreva ("♥     ","Código"," \t♥\t","Produto"," \t♥\t","Valor"," \t   ♥\t  ","Quantidade"," \t♥\t","Valor Total","     ♥\n")
						escreva ("♥     ",codProduto[contador]," \t♥\t",produto[contador]," \t♥\t",preco[contador]," \t   ♥\t       ",carrinhoCompras[contador],"    \t♥\t   ",carrinhoCompras[contador] * preco[contador],"        ♥\n")
					}}
						escreva ("Total a vista no cartão c/ 10% de acréscimo= R$" ,mat.arredondar((total * 1.1),2),"\n")
						escreva ("Imposto de 9% = R$",(total*0.09),"\n")
						escreva ("Total com imposto de 9% = R$",mat.arredondar (((total*1.1)*1.09),2),"\n")
						escreva("=========================================================================================================\n")
						}
							senao se (opcao ==3){
								total *= 1.15
								escreva("\n")
								escreva("Forma de pagamento : Cartão em 2x" , "\n")
								escreva("\n")
								escreva("============================================== Nota Fiscal ==============================================\n")
						para (contador = 0; contador < 10; contador++){
						se(carrinhoCompras[contador] != 0){
							escreva ("♥     ","Código"," \t♥\t","Produto"," \t♥\t","Valor"," \t   ♥\t  ","Quantidade"," \t♥\t","Valor Total","     ♥\n")
						escreva ("♥     ",codProduto[contador]," \t♥\t",produto[contador]," \t♥\t",preco[contador]," \t   ♥\t       ",carrinhoCompras[contador],"    \t♥\t   ",carrinhoCompras[contador] * preco[contador],"        ♥\n")
					}}
						escreva ("Total em 2x no cartão c/ 15% de acréscimo= R$" , mat.arredondar((total),2) , "\n")
						escreva ("Imposto de 9% = R$",(total*0.09),"\n")
						escreva ("Total com imposto de 9% = R$",mat.arredondar (((total)*1.09),2),"\n")
						escreva ("Parcelas de: R$" , (mat.arredondar (((total)*1.09),2))/2 , " cada.\n")
						escreva("=========================================================================================================\n")
							}
								senao{	
										
								}											
					escreva("\n")	
							
			}	voltarSite()	
	}
		

		funcao insereBanner() {
		escreva("www.devsaudavel.com.br\n")
		escreva ("\t\t\t\t*****DEV SAUDÁVEL*****\n")
		escreva ("\t\t\t\tProgramando a sua saúde\n")	
		}	
		
		funcao tituloTabela(){
			escreva ("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥\n")
			escreva ("♥\t\t\t    TABELA DE PRODUTOS\t\t\t\t   ♥\n")
			escreva ("♥    CÓDIGO\t♥\t PRODUTO\t♥    VALOR (R$)    ♥    ESTOQUE    ♥\n")
		}
		
		funcao tituloCarrinho(){
			escreva("=============================================================================================\n")
			escreva("\t\t\t\t     CARRINHO DE COMPRAS\n")	
			escreva ("♥    CÓDIGO\t♥\t PRODUTO\t♥    VALOR (R$)    ♥    QTDD    ♥     TOTAL (R$)    ♥\n")
		}
		
		funcao linha(logico forte){
			se(forte){
				escreva ("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥\n")
			}
			senao{
				escreva("=============================================================================================\n")
			}
		}
		
		funcao voltarSite(){
			caracter desejaVoltarParaSite		
			escreva("Deseja retornar para o site [S] / [N]: ")
			leia(desejaVoltarParaSite)
			se (desejaVoltarParaSite == 'S' ou desejaVoltarParaSite == 's'){
				inicioPrograma()
				 } senao 
					{
					limpa()
					escreva("Agradecemos a visita !!!")
				}
								
			}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9356; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */