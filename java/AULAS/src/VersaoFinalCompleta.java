import java.util.*;

public class VersaoFinalCompleta {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);

		double VALOR[] = new double[10];
		int ESTOQUE[] = new int[10];
		String PRODUTO[] = new String[10];
		String CODIGO[] = new String[10];

		String PRODUTOFINAL[] = new String[10];
		double VALORFINAL[] = new double[10];
		int QTDEFINAL[] = new int[10];

		String compra;
		char sn = 'S';
		int quantidade;
		double carrinho = 0.0;
		int qtdeCompra = 0;
		double valorFinal = 0.0;
		double valorFECHADO;
		String y = "grupo1";
		int formaDePagamento;
		int carrinhoVazio = 0; // ESSA VARIÁVEL VAMOS UTILIZAR PARA INFORMAR QUE O CARRINHO AINDA ESTA VAZIO
		char auxNota = 'N'; //Variavel para finalizar o loop de verificação de escolha de forma de pagamento
		
		// PREENCHENDO VETORES DE CODIGO E ESTOQUE

		for (int x = 0; x < 10; x++) {
			CODIGO[x] = ("G1" + (x + 1));
		}
		for (int x = 0; x < 10; x++) {
			ESTOQUE[x] = 10;
		}

		// VETOR DE PREÇOS

		VALOR[0] = 12.0;
		VALOR[1] = 15.0;
		VALOR[2] = 16.0;
		VALOR[3] = 13.0;
		VALOR[4] = 12.0;
		VALOR[5] = 13.0;
		VALOR[6] = 10.0;
		VALOR[7] = 10.0;
		VALOR[8] = 12.0;
		VALOR[9] = 11.0;

		// VETOR DE PRODUTOS

		PRODUTO[0] = "DONNUT NUTELLA";
		PRODUTO[1] = "DONNUT NINHO";
		PRODUTO[2] = "DONNUT COCO";
		PRODUTO[3] = "DONNUT CHOCO";
		PRODUTO[4] = "DONNUT KIT KAT";
		PRODUTO[5] = "DONNUT CREME";
		PRODUTO[6] = "DONNUT CHURROS";
		PRODUTO[7] = "DONNUT GELEIA";
		PRODUTO[8] = "DONNUT MORANGO";
		PRODUTO[9] = "DONNUT FRUTAS";

		// INICIO DO CODIGO

		do {
			System.out.println();
			System.out.println();
			System.out.println();
			System.out.println();
			System.out.println();
			System.out.println("\t\t    * DONNUTIX *");
			System.out.println("\t\t~ Seu Donnut, nosso Mix ~");
			System.out.println("Deseja fazer compras? [S/ N].");
			sn = leia.next().toUpperCase().charAt(0);
			if (sn == 'S') {
				do {
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println("\t\t    * DONNUTIX *");
					System.out.println("\t\t~ Seu Donnut, nosso Mix ~\n");
					System.out.println("\t\t    ** MENU ***\n");
					for (int x = 0; x < 10; x++) {
						System.out.printf("%s\t\t%s\t\t%.2f\t\t%d\n", CODIGO[x], PRODUTO[x], VALOR[x], ESTOQUE[x]);
					}

					System.out.print("\n\t\t    **** CARRINHO ****\n"); // ESCREVE O CARRINHO DE COMPRA
					for (int x = 0; x < 10; x++) {
						if (PRODUTOFINAL[x] != null) {
							System.out.printf("%d x %s \t %.2f \n", QTDEFINAL[x], PRODUTOFINAL[x], VALORFINAL[x]);
						} else {
							carrinhoVazio += 1;
						}
						if (carrinhoVazio == 10) {
							System.out.print("CARRINHO VAZIO.\n \n \n ");
						}
					}

					System.out.print("\nInforme o código do donnuts que deseja comprar: ");
					compra = leia.next().toUpperCase();
								
								//Laço FOR que faz a entrada dos Donnuts pedidos no carrinho
					for (int x = 0; x < 10; x++) {
						if (compra.equals(PRODUTO[x]) || compra.equals(CODIGO[x])) {
							System.out.println("\nQual a quantidade? ");
							quantidade = leia.nextInt();
							System.out.println("\nConfirma a quantidade? [S/ N]");
							sn = leia.next().toUpperCase().charAt(0);
							if (sn == 'S') {
								if (quantidade > 0 && quantidade <= ESTOQUE[x]) {
									carrinho = quantidade * VALOR[x];

									System.out.printf(
											"\n\nCOMPRA ATUAL: %d x %s \t VALOR UNITÁRIO: R$ %.2f \t TOTAL ACUMULADO: R$ %.2f \n",
											quantidade, PRODUTO[x], VALOR[x], carrinho);

									qtdeCompra += quantidade;
									valorFinal += carrinho;
									ESTOQUE[x] = ESTOQUE[x] - quantidade;
									PRODUTOFINAL[x] = PRODUTO[x];
											 //Verifica se o produto pedido já está no carrinho
									if (PRODUTO[x].equals(PRODUTOFINAL[x])) {
										VALORFINAL[x] += carrinho;
										QTDEFINAL[x] += quantidade;
									}
								} else {
									System.out.printf(
											"\nESTOQUE INDISPONÍVEL! \n VERIFIQUE A LISTA. \n APERTE QUALQUER TECLA E ENTER PARA CONTINUAR.\n");
									y = leia.next();
								}
							} else {
								System.out.printf(
										"\nVERIFIQUE O ESTOQUE NOVAMENTE, PARA ISSO APERTE QUALQUER TECLA E ENTER PARA RECOMEÇAR.\n");
								y = leia.next();
							}

						}

					}

					System.out.printf("\nSUA COMPRA DE %d DONNUTS, VALOR ATUAL R$  %.2f \n", qtdeCompra, valorFinal);
					System.out.printf("\n\t\t    **** CARRINHO ****\n");

					for (int x1 = 0; x1 < 10; x1++) { // tive que mudar de X para X1 porque estava dando bug (by: Ester)
						if (PRODUTOFINAL[x1] != null) {
							System.out.printf("%d x %s \t R$ %.2f \n", QTDEFINAL[x1], PRODUTOFINAL[x1], VALORFINAL[x1]);
						}
					}

					System.out.print("\nDeseja continuar comprando? [S/N]");
					sn = leia.next().toUpperCase().charAt(0);

				} while (sn == 'S'); // FIM DO LAÇO DA VITRINE
				
				//Laço de pagamento
				do {
				// Finalização do pedido e escolha dos métodos de pagamento
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
				System.out.print("\nMétodos de pagamento: ");
				System.out.print("\n1 - À vista com 10% de desconto.");
				System.out.print("\n2 - No cartão de crédito em 1x (10% de acréscimo.)");
				System.out.print("\n3 - No cartão de crédito em 2x (15% de acréscimo.");
				System.out.print("\nInforme a forma de pagamento desejada [1/2/3]: ");
				formaDePagamento = leia.nextInt();

				// Pagamento a vista, 10% de desconto
				if (formaDePagamento == 1) {
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.print("\n****DONNUTIX****\n\n");
					System.out.print("*NOTA FISCAL*");
					for (int x = 0; x < 10; x++) {
						if (PRODUTOFINAL[x] != null) {
							System.out.printf("\n%d - %s - R$%.2f \n", QTDEFINAL[x], PRODUTOFINAL[x], VALORFINAL[x]);
						}
					}
					System.out.printf("\nValor total da nota fiscal: R$ %.2f", valorFinal);
					System.out.printf("\nImpostos sobre a nota: R$ %.2f", (valorFinal * 9) / 100);
					System.out.printf("\nValor do desconto: R$%.2f", (valorFinal * 10) / 100);
					valorFECHADO = valorFinal - (valorFinal * 10) / 100;
					System.out.printf("\nValor total a pagar: R$%.2f", valorFECHADO);
					System.out.print("\nObrigado pela preferência!\n");
					auxNota ='y';
				} // Pagamento no cartão 1x 10% de acrescimo
				else if (formaDePagamento == 2) {
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.print("\n****DONNUTIX****\n\n");
					System.out.print("*NOTA FISCAL*");
					for (int x = 0; x < 10; x++) {
						if (PRODUTOFINAL[x] != null) {
							System.out.printf("\n%d - %s - R$%.2f \n", QTDEFINAL[x], PRODUTOFINAL[x], VALORFINAL[x]);
						}
					}
					System.out.printf("\nValor total da nota fiscal: R$%.2f", valorFinal);
					System.out.printf("\nImpostos sobre a nota: R$%.2f", (valorFinal * 9) / 100);
					System.out.printf("\nValor do acréscimo: R$%.2f", (valorFinal * 10) / 100);
					valorFECHADO = valorFinal + (valorFinal * 10) / 100;
					System.out.printf("\nValor total a pagar: R$%.2f", valorFECHADO);
					System.out.print("\nObrigado pela preferência!\n");
					auxNota ='y';
				} // Pagamento parcelado em 2x 15% de acrescimo
				else if (formaDePagamento == 3) {
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.println();
					System.out.print("\n****DONNUTIX****\n\n");
					System.out.print("*NOTA FISCAL*");
					for (int x = 0; x < 10; x++) {
						if (PRODUTOFINAL[x] != null) {
							System.out.printf("\n%d - %s - R$%.2f \n", QTDEFINAL[x], PRODUTOFINAL[x], VALORFINAL[x]);
						}
					}
					System.out.printf("\nValor total da nota fiscal: R$%.2f", valorFinal);
					System.out.printf("\nImpostos sobre a nota: R$%.2f", (valorFinal * 9) / 100);
					System.out.printf("\nValor do acréscimo: R$%.2f", (valorFinal * 15) / 100);
					valorFECHADO = valorFinal + (valorFinal * 15) / 100;
					System.out.printf("\nValor total a pagar: R$%.2f", valorFECHADO);
					System.out.printf("\nSerão 2 parcelas de : R$%.2f", valorFECHADO / 2);
					System.out.print("\nObrigado pela preferência!\n");
					auxNota ='y';
				}
				else {
					System.out.println("METODO NÃO IDENTIFICADO, CLIQUE QUALQUER TECLA E ENTER PARA CONTINUAR!");
					y = leia.next();
					auxNota ='N';
				}
				
			}while(auxNota == 'N'); //Laço criado para evitar problemas de opção de pagamento inexistente
				
				System.out.printf("\nDeseja voltar ao início? [S/N]");
				sn = leia.next().toUpperCase().charAt(0);
				// faz a limpeza do carrinho para o próximo pedido
				for (int x = 0; x < PRODUTOFINAL.length; x++) {
					PRODUTOFINAL[x] = null;
					QTDEFINAL[x] = 0;
					VALORFINAL[x] = 0;
				}

				// mensagem de encerramento da compra
			} else {
				System.out.println("Até Breve!");
			}
			// condição para o loop da loja
		} while (sn == 'S');

		leia.close();
	}
	//CODIGO ECOMMERCE FEITO PELO GRUPO 1
	//ESTER, RENATA, FLAVIO, PAULO, PAMELA E FARINA
	// TRADUÇÃO E ADAPTAÇÃO PROJETO PORTUGOL PARA JAVA
}