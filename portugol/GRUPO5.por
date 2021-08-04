programa{
	
	funcao inicio(){
		cadeia auxCod
		caracter opcao = 'V'
		real icms = 0.00, descontoAVista = 0.00, pagamentoCartao = 0.00, pagamentoParcelado = 0.00
		inteiro quantidade=0, op = 0, x=0, contador = 0, quantidadeCarrinho[10]
		real total = 0.0
		real totalCarrinho = 0.0
		cadeia produtoCarrinho[10]
		cadeia codigo[10]	cadeia produto[10]		      real valor[10]	inteiro estoque[10]
		
		codigo[0] = "G5-1"  produto[0] = "RODO DE PIA"     valor[0] = 20.00  estoque[0] = 10
		codigo[1] = "G5-2"  produto[1] = "VASSOURA"        valor[1] = 10.00  estoque[1] = 10
		codigo[2] = "G5-3"  produto[2] = "ROBÔ ASPIRADOR"  valor[2] = 250.00 estoque[2] = 10
		codigo[3] = "G5-4"  produto[3] = "ASPIRADOR DE PÓ" valor[3] = 150.00 estoque[3] = 10
		codigo[4] = "G5-5"  produto[4] = "LIXEIRA  "       valor[4] = 15.00  estoque[4] = 10
		codigo[5] = "G5-6"  produto[5] = "RODO MAGICO"     valor[5] = 55.00  estoque[5] = 10
		codigo[6] = "G5-7"  produto[6] = "PÁ DE LIXO"      valor[6] = 5.00   estoque[6] = 10
		codigo[7] = "G5-8"  produto[7] = "TAPETE DE PIA"   valor[7] = 22.00  estoque[7] = 10
		codigo[8] = "G5-9"  produto[8] = "SACOLA DE LIXO"  valor[8] = 12.00  estoque[8] = 10
		codigo[9] = "G5-10" produto[9] = "ESFREGÃO "       valor[9] = 18.00  estoque[9] = 10


		escreva("Deseja fazer compras? (S/N): ")
		leia(opcao)

		se(opcao == 's' ou opcao == 'S'){
		limpa()
		escreva("LIMPAJÁ\n")
		escreva("Cuidando do seu lar\n")
		escreva("----------------------------------------------------------------------------------------------------------\n")
		escreva("COD\t\tPRODUTO\t\t\t\tVALOR R$\t\tESTOQUE\n")
		escreva("----------------------------------------------------------------------------------------------------------\n")

		para (x=0;x<10; x++){
			escreva(codigo[x],"\t\t",produto[x],"\t\t\t",valor[x],"\t\t\t",estoque[x],"\n")
		}
		
		escreva("Deseja comprar? (V) ou Finalizar compra(F): ")
		leia(opcao)
		
		enquanto(opcao == 'V' ou opcao == 'v'){
		
		escreva("SELECIONE O CODIGO DO PRODUTO: ")
		leia(auxCod)
		
		escreva("INFORME QUANTAS UNIDADES: ")
		leia(quantidade)
		limpa()
		para(x=0; x < 10; x++){
			se(auxCod == codigo[x]){
				se(quantidade <= estoque[x]){

					total = valor[x] *quantidade
					totalCarrinho += total
					
					estoque[x] = estoque[x] - quantidade
					icms = (totalCarrinho) * 0.09
					quantidadeCarrinho[contador] = quantidade
					produtoCarrinho[contador] = produto[x] 
					contador++
					
					escreva(codigo[x],"\t", produto[x],"\t Unidades ",quantidade, "\t Valor total ", (total),"\n")
					escreva("Deseja continuar comprando?(V) ou Prosseguir para opções de pagamento?(F)\n: ")
					leia(opcao)
					limpa()
					se(opcao == 'V' ou opcao == 'v'){
						escreva("----------------------------------------------------------------------------------------------------------\n")
						escreva("COD\t\tPRODUTO\t\t\t\tVALOR R$\t\tESTOQUE\n")
						escreva("----------------------------------------------------------------------------------------------------------\n")
						para (x=0; x<10; x++){
							escreva(codigo[x],"\t\t",produto[x],"\t\t\t",valor[x],"\t\t\t",estoque[x],"\n")
						}

					} se(opcao == 'F' ou opcao == 'f'){
						escreva("Escolha a forma de pagamento:\n 1: Á vista (10% de desconto)\n 2: Cartão com acrescimo de 10%\n 3: 2 parcelas (acrescimo de 15%) \n")
						leia(op)
						limpa()
						escreva("----------------------------------------------------------------------------------------------------------\n")
						escreva("NOTA FISCAL\t LIMPAJÁ\n")
						escreva("\nICMS DE 9% CALCULADO SOBRE O VALOR TOTAL DA COMPRA! \n")

						para(inteiro i = contador - 1; i >= 0; i--){
							escreva(produtoCarrinho[i], " Unidades: ", quantidadeCarrinho[i],"\n")
						}
						
						se(op == 1){
							descontoAVista = totalCarrinho * 0.10
							//para(x=0; x<=10; x++){
							//escreva("Unidades: ",quantidade," ", produtoCarrinho[x],"\n")}
							escreva("Valor total da compra: ", totalCarrinho + icms - descontoAVista, "\n")
							
						} se(op == 2){
							pagamentoCartao = totalCarrinho * 0.10
							escreva("Valor total da compra: ", totalCarrinho + icms + pagamentoCartao, "\n")
							
						} se (op == 3){
							pagamentoParcelado = totalCarrinho * 0.15
							escreva("Valor total da compra: ", totalCarrinho + icms + pagamentoParcelado, "\n")
							escreva("Valor das parcelas: ", (totalCarrinho + icms + pagamentoParcelado) / 2.00, "\n")
						}
					}

				} senao {
					escreva("Quantidade Indisponivel\n")
				}
			}
		}
		}

	

	
	escreva("COMPRA FINALIZADA, OBRIGADA POR COMPRAR CONOSCO\n")
		}
		
		senao se(opcao == 'n' ou opcao == 'N'){
		escreva("Volte Sempre!!!")
		}
		
		senao{
		escreva("Opcao inválida")
		}
		


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4730; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */