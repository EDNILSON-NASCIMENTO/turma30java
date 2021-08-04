programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		
		const inteiro minimo = 10
		inteiro x = 0, y = 0
		inteiro estoque[minimo] = {10,10,10,10,10,10,10,10,10,10}
		real valor[minimo] = {500.00,200.00,299.00,300.00,245.00,200.00,140.00,129.00,130.00,140.00}
		inteiro codigo[minimo] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, vezes = 0
		real valorCompras[minimo]
		real valorTotal = 0.0, imp = 0.0, valorAtualizado = 0.0
		cadeia produtos[minimo] = {"Playstation5","Playstation4","FifaUltimate","   XboxOne   "," 	Gta 	  ","Controle PS5","Controle PS4","  Cabo Hdmi  ","  Controle U  ","TecladoGamer"}
		cadeia compras[minimo]
		caracter dinheiro, cheque, credito, parcelas, juros, notaFiscal, empresa, imposto, totalPagar, confirmacao, novoUser
		cadeia pag, parc
		logico user = verdadeiro

		enquanto(user == verdadeiro) {
			escreva ("--------Bem Vindo a Smart Gamer!------------\n")
			escreva ("-------Novo mundo ao seu alcance!------------\n")
			escreva("\nCOD:\t"," PRODUTOS:\t" ,  "VALOR:\t" ,  "\tESTOQUE:\n")
			para(x = 0; x<10; x++){
				
				escreva(codigo[x]," - ",produtos[x],"\tR$",valor[x],"\t\t",estoque[x]," und. |\t","\n")
					
			}
			escreva("\nPor favor, digite o código do produto que deseja: ")
			para(x = 0; x<10; x++) {
				leia(codigo[x])
			
					se(codigo[x] == 1){
						estoque[0] = estoque[0] -1
						compras[x] = produtos[0]
						valorCompras[x] = valor[0]
						escreva("O produto ","'",produtos[0],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						} senao {
							pare
						}
					}
					se(codigo[x] == 2){
						estoque[1] = estoque[1] -1
						compras[x] = produtos[1]
						valorCompras[x] = valor[1]
						escreva("O produto ","'",produtos[1],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 3){
						estoque[2]= estoque[2] -1
						compras[x] = produtos[2]
						valorCompras[x] = valor[2]
						escreva("O produto ","'",produtos[2],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 4){
						estoque[3] = estoque[3] -1
						compras[x] = produtos[3]
						valorCompras[x] = valor[3]
						escreva("O produto ","'",produtos[3],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 5){
						estoque[4] = estoque[4] -1
						compras[x]= produtos[4]
						valorCompras[x] = valor[4]
						escreva("O produto ","'",produtos[4],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 6){
						estoque[5] = estoque[5] -1
						compras[x] = produtos[5]
						valorCompras[x] = valor[5]
						escreva("O produto ","'",produtos[5],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 7){
						estoque[6] = estoque[6] -1
						compras[x] = produtos[6]
						valorCompras[x] = valor[6]
						escreva("O produto ","'",produtos[6],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 8){
						estoque[7] = estoque[7] -1
						compras[x] = produtos[7]
						valorCompras[x] = valor[7]
						escreva("O produto ","'",produtos[7],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 9){
						estoque[8] = estoque[8] -1
						compras[x] = produtos[8]
						valorCompras[x] = valor[8]
						escreva("O produto ","'",produtos[8],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
					se(codigo[x] == 10){
						estoque[9] = estoque[9] -1
						compras[x] = produtos[9]
						valorCompras[x] = valor[9]
						escreva("O produto ","'",produtos[9],"'", " foi adicionado ao carrinho.\n")
						escreva("\nDeseja adicionar outros produtos ao carrinho (S/N): ")
						leia(confirmacao)
						se (confirmacao == 'S' ou confirmacao == 's'){
							escreva("\nPor favor, digite o código do produto que deseja: ")
						}senao {
							pare
						}
					}
				}
				limpa()
				escreva("Carrinho de compras:\n")
				escreva("PRODUTOS:\t","\tVALOR:\n")
				para(x = 0; x < minimo; x++ ){
					valorTotal = valorTotal + valorCompras[x]
					escreva("_____\n")
					escreva(x + 1," - ",compras[x],"\t","R$ ", valorCompras[x],"\n")
				}
				imp = mat.arredondar((valorTotal*0.09), 2)
				escreva("\nValor total do carrinho: R$",valorTotal)
				escreva("\nValor total dos impostos a serem pagos: R$",imp,"\n")
				escreva("\n============ FORMA DE PAGAMENTO =============\n")
				escreva ("\n\nInsira 'A' para á vista em dinheiro, 'AC' para á vista no cartão de crédito ou 'CC' para cartão de crédito: ")
				leia (pag)
	
				se (pag == "A" ou pag == "a")
				{
					valorAtualizado = valorTotal * 0.10 / 100
					valorTotal = valorTotal - valorAtualizado
				}
				se (pag == "AC" ou pag == "ac")
				{
					valorAtualizado = valorTotal * 0.10
					valorTotal = valorTotal - valorAtualizado
				}
				se (pag == "CC" ou  pag == "cc")
				{
					escreva ("\nEm 2x: ")
					leia (parc)
	
					se (parc == "2x" ou parc == "2")
					{
						vezes = 1	
					}
					senao se (parc == "3x" ou parc == "3")
					{
						vezes = 2	
						valorAtualizado = valorTotal*0.15
						valorTotal = valorTotal + valorAtualizado
					}
				}
	
				escreva ("\nDeseja a impressão da nota fiscal - S/N ?")
				leia (notaFiscal)
	
				se (notaFiscal == 'S' ou notaFiscal == 's')
				{
					limpa ()
					escreva ("============ NOTA FISCAL ==========\n")
					escreva ("============ Smart Gamer! ==========\n")
					para(x = 0; x < minimo; x++ ){
					escreva("==============================================\n")
					escreva(x + 1," - ",compras[x],"\t","R$ ", valorCompras[x],"\n")				
					}
					escreva ("\n================= IMPOSTOS PAGOS = " + imp + " =================\n")					
					
					se (vezes == 1)
					{ 
						escreva ("\n\n========== TOTAL A SER PAGO = R$ " + valorTotal + " ===============\n")
						valorTotal =mat.arredondar((valorTotal / 2), 2)
						escreva ("\n\n========== PARCELADO EM 2X DE R$ " + valorTotal + " =============\n")
					}
					senao
					{
						escreva ("\n\n============ TOTAL A SER PAGO = R$ " + valorTotal + " =============\n")
					}
					escreva ("\n\n========== OBRIGADO E VOLTE SEMPRE ==============\n")
					
				}
				senao{
					
					escreva ("\n\n============= OBRIGADO E VOLTE SEMPRE ==============\n\n")
				}
				escreva("\nDeseja continuar com novas compras (S/N): " )
				leia(novoUser)
				se (novoUser == 'S' ou novoUser == 's') {
					limpa()
					user = verdadeiro
				} senao {
					
					user = falso
					limpa()
					escreva("   Obrigado!! \n ")
					escreva("Volte sempre!!")
				}

			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8630; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */