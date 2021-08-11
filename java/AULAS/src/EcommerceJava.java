//VERSÃO 1.0

import java.time.LocalDate;
import java.util.Scanner;
import java.util.Calendar;

public class EcommerceJava {
	
	final static int DIVERSIDADE_PRODUTOS = 10;
	final static int ESTOQUE_INICIAL = 10;
	final static int LIMITE_NOTAS = 3;
	
	static int[] xVetor = new int [LIMITE_NOTAS];
	static int[][] estoqueSelecionadoMatriz = new int [LIMITE_NOTAS][DIVERSIDADE_PRODUTOS];
	static int[] quantidadeFaturasVetor = new int [LIMITE_NOTAS];
	
	static double[] valorFaturaVetor = new double [LIMITE_NOTAS];
	
	static String[][] codigoMatriz = new String[LIMITE_NOTAS][DIVERSIDADE_PRODUTOS];
	static String[][] valorMatriz = new String[LIMITE_NOTAS][DIVERSIDADE_PRODUTOS];
	static String[][] produtoMatriz = new String[LIMITE_NOTAS][DIVERSIDADE_PRODUTOS];
	
	int[] horasAtualVetor = new int[LIMITE_NOTAS];
	int[] minutoAtualVetor= new int[LIMITE_NOTAS];
	
	static String[] formataEstoqueSelecionado = new String[DIVERSIDADE_PRODUTOS];
	static String[] formataValorTotal = new String[DIVERSIDADE_PRODUTOS];
	static double[] formataImposto = new double[DIVERSIDADE_PRODUTOS];
	static String formataCodigo;
	
	static LocalDate anoCalendario; 
	static LocalDate[] anoCalendarioVetor= new LocalDate[LIMITE_NOTAS];
	static int horaCalendario;
	static int[] horaCalendarioVetor = new int[LIMITE_NOTAS];
	static int minutoCalendario;
	static int[] minutoCalendarioVetor = new int[LIMITE_NOTAS];
	static int 
	formataValorTotalNumero;
	
	
	public static void main(String[] args) {
		// variáveis do código e produto:
				String[] codigo = new String[DIVERSIDADE_PRODUTOS];
				String[] produto = new String[DIVERSIDADE_PRODUTOS]; 
				String codigoDigitado;

				String auxQuantidadeCompra; //  Auxilia para saber se o valor em "leia(quantidadeCompra) é inteiro ou não".
				
				//variáveis relacionadas ao interesse de fazer, continuar as compras ou voltar ao início: 
				char fazerCompras,
				continuarCompras = 'S',
				respostaVoltarInicio = 'N';

				/* vetor do preço (valor) dos produtos: 
				 *  NOTA: está em cadeia apenas para auxiliar na formatação da página
				 *  colocando um espaço no fim do número, mas depois será convertido. Caso
				 *  ocorra uma troca, valor é usado na função página de compras e na conta
				 *  do valor total da compra.*/
				String[] valor = new String[DIVERSIDADE_PRODUTOS];


				// variáveis com os valores: total da compra e fatura a pagar. 
				double 
				valorTotalCompra = 0.00, 
				valorFatura = 0.0;

				// quantidade de parcelas do pagamento
				int 
				quantidadeFaturas = 0;
				
				// variáveis do estoque e vetor do carrinho: 
				int[] estoqueSelecionado = new int[DIVERSIDADE_PRODUTOS];
				int quantidadeEstoque = ESTOQUE_INICIAL;
				int quantidadeCompra = 0; 
				int[] carrinho = new int[DIVERSIDADE_PRODUTOS]; 
				int[] estoqueInicial = new int[DIVERSIDADE_PRODUTOS]; 
				
				// variáveis das respostas:
				char opcaoPagamento;
				
				// variável auxiliar dos índices e laços:
				int 
				x = 0;

				// variável para validar o código digitado
				boolean 
				validarCodigo = true;

				// variável para saber se o carrinho está vazio.
				int
				carrinhoVazio = 0;

				// variável para saber se já ocorreu alguma compra.
				boolean 
				primeiraCompra = true;

				//descobrir qual nota fiscal é:
				int 
				contadorNotaFiscal = 1;
				
				String numeroNotaFiscal = "0";
				
				int validaContador = 0;

				
				// DETERMINAÇÃO DOS ELEMENTOS DA LOJA --------------------------------------------------------- //
				produto[0] = "Bola de volei          "; valor[0] = " 54.99"; 
				produto[1] = "Calça legging          "; valor[1] = " 69.99";
				produto[2] = "Caneleira de peso 5kg  ";	valor[2] = " 59.99";
				produto[3] = "Chuteira feminina      ";	valor[3] = "139.99";
				produto[4] = "Chuteira masculina     ";	valor[4] = "139.99";
				produto[5] = "Halter emborrachado 2kg";	valor[5] = " 49.99";
				produto[6] = "Luva para goleiro      ";	valor[6] = "159.99";
				produto[7] = "Prancha de surf        ";	valor[7] = "889.99";
				produto[8] = "Regata para musculação ";	valor[8] = " 29.99";
				produto[9] = "Skate                  ";	valor[9] = "249.99";

				
				// Valores para estoque inicial e código:
				for(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
					codigo[x] = "G2-"+(x+1);
					estoqueSelecionado[x] = 0;
					estoqueInicial[x] = ESTOQUE_INICIAL;
				}
				// FIM DA DETERMINAÇÃO DOS ELEMENTOS DA LOJA ------------------------------------------------- //	


				/* NOTA: Para a validação de dados, como entrada de números e caracteres, foi utilizada uma estrutura 
				 *  baseada em laços do tipo (faça-enquanto) seguidos de condicionais. Esses laços podem ser úteis para 
				 *  se guiar ao longo do código. Ao todo são 10, numerados.
				*/

			
	
		
		Scanner leia = new Scanner(System.in);
		
		
	// (faça - enquanto) responsável pelo retorno ao início da página, após a compra.
	do {
		limpa();
		cabecalho(3);
		
		do {
			if (numeroNotaFiscal == "0") 
			{
				System.out.println("  ► Deseja fazer compras?[S/N]: ");
				fazerCompras = leia.next().toUpperCase().charAt(0);	
			}
		
			else
			{
				if(contadorNotaFiscal == LIMITE_NOTAS)
				{
					do{
							System.out.println(" ► Você fez muitas compras hoje!!");
							System.out.println(" ► Volte amanhã para ver o estoque atualizado.");
							System.out.println(" ► Deseja visualizar suas notas fiscais anteriores? [V]");
							System.out.println(" ► Ou digite [N] para sair: ");
							fazerCompras = leia.next().toUpperCase().charAt(0);	
						
							if(fazerCompras != 'N' && fazerCompras != 'V') {
								cabecalho(3);
								System.out.println("Resposta inválida.\n");
							}
						
					
						} while (fazerCompras != 'N' && fazerCompras != 'V'); 	
				}
				else
				{
					
					System.out.println("  ► Deseja fazer compras?[S/N] ");
					System.out.println(" ► Ou deseja visualizar sua(s) nota(s) fiscal(is) anterior(es)? [V]: ");
					fazerCompras = leia.next().toUpperCase().charAt(0);	
				}
				if(fazerCompras == 'N')
				{
					respostaVoltarInicio = 'N';
				}
				if (fazerCompras == 'V') 
				{
					
					do {
						validaContador = 0;
						System.out.println(" Digite o número da nota fiscal (exemplo: 1, 2, 3...) de acordo com a data de emissão: ");
						
						numeroNotaFiscal = leia.next();
						
						try{
				            int number = Integer.parseInt(numeroNotaFiscal);
				           
				        }
				        catch (NumberFormatException ex){
				        	System.out.println("Digite um valor válido! Um número inteiro: ");
				        	validaContador++;
				        }
						
					} while( validaContador > 0 || (Integer.parseInt(numeroNotaFiscal) >= contadorNotaFiscal) );
						if (Integer.parseInt(numeroNotaFiscal) >= contadorNotaFiscal) 
						{
							System.out.println(" Digite um valor válido! Você só tem " + Integer.toString(contadorNotaFiscal-1) +" nota(s) fiscal(is).");
						}
						
						
						else if (Integer.parseInt(numeroNotaFiscal) <= contadorNotaFiscal) 
						{
							notaFiscal(x, estoqueSelecionado, valorFatura, quantidadeFaturas, codigo, valor, produto, Integer.parseInt(numeroNotaFiscal), contadorNotaFiscal); 
							System.out.println("\n Voltar para o ínicio?[S/N]: ");
							respostaVoltarInicio = leia.next().toUpperCase().charAt(0);	
						}
						
						
					
				}	
			}
			primeiraCompra = true;
			
			
			if (fazerCompras == 'S') {
				
				// 4 - (faça - enquanto) valida a pergunta continuar compras.
				do {
					// chama a página de compra durante a compra.
					paginaDeCompras(x, codigo, produto, valor, estoqueInicial, carrinho, estoqueSelecionado, carrinhoVazio);

					// próxima pergunta é referente a continuar comprando, só deve aparecer após a primeira compra.
					/* (faça - enquanto) responsável pelo retorno caso a resposta 
					 *  de continuarCompras seja inválida, forçando o usuário a digitar certo.*/
					 
					// 5 - (faça - enquanto) valida se a resposta de continuar compras é ou "S" ou "N".
					do {
						if (primeiraCompra == false) {
							System.out.print("  ► Continuar a compra? [S/N]: ");
							continuarCompras = leia.next().toUpperCase().charAt(0);
						}
						if (continuarCompras == 'S' || primeiraCompra == true) {
			
							// 6 - (faça - enquanto) valida se a resposta para o código digitado.
							do {
							
								if (validarCodigo == false) {
									System.out.print("  Código inválido!");
								}
								//a variável recebe falso para se caso entrar no próximo "se".
								validarCodigo = false;
								
								leia.nextLine();
								// momento de escolher o produto desejado.
								System.out.print("\n  ► Digite o código do produto desejado: ");
								codigoDigitado = leia.next().toUpperCase();
							
				
								// (laço para e condicional se) responsáveis por escrever o produto do código solicitado.
								for(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) { 
									
									if(codigoDigitado.equals(codigo[x])) {
										validarCodigo = true;
										quantidadeCompra = 0;
										linha(4);
										System.out.print("║ "+ codigo[x]+"\t│ "+produto[x]+"\t│ "+valor[x]+"\t  │ "+estoqueInicial[x]+"\t\t\t║\n");
										linha(5);
										
										// 7 - (laço faça - enquanto) valida o estoque selecionado.
										do {
										
											if (quantidadeCompra > estoqueInicial[x]) {
												linha(10);
												System.out.print("Quantidade indisponível.\nTemos somente "+ estoqueInicial[x] +" no estoque!\n");
											}
											if (estoqueSelecionado[x] != 0) {
											System.out.print("  ► Produto já escolhido! Altere a quantidade desejada: ");
											} 

											// 8 - (faça - enquanto) valida se a quantidade do estoque digitada foi um número inteiro.
											do {
												validaContador = 0;
												System.out.print("\n  ► Digite a quantidade desejada: ");
												auxQuantidadeCompra = leia.next();
												
												try{
										            int number = Integer.parseInt(auxQuantidadeCompra);
										            if (Integer.parseInt(auxQuantidadeCompra) < 0) {
														System.out.println("Digite um valor válido! Um número inteiro positivo: ");
													}
										        }
										        catch (NumberFormatException ex){
										        	System.out.println("Digite um valor válido! Um número inteiro: ");
										        	validaContador++;
										        }
												
											
											} while (validaContador > 0 || Integer.parseInt(auxQuantidadeCompra) < 0);
											quantidadeCompra = Integer.parseInt(auxQuantidadeCompra);
											
											
										// (FIM) 7 - (laço faça - enquanto) valida o estoque selecionado.	
										} while (quantidadeCompra > estoqueInicial[x] || quantidadeCompra < 0);
			
										// os produtos selecionados para a compra são retirados do estoque:
										estoqueSelecionado[x] = quantidadeCompra;
										carrinho[x] = 1;
										primeiraCompra = false;
									}
									
								}
								
							// (FIM) 6 - (faça - enquanto) valida se a resposta para o código digitado.	
							} while (validarCodigo == false);
						}
						
						else if (continuarCompras == 'N') {
							
							for (x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
								
								// aqui é necessário converter o valor para um número real.
								valorTotalCompra += ( Double.parseDouble(valor[x]) * estoqueSelecionado[x]);
							}
							
	//PÁGINA DE FINALIZAÇÃO DA COMPRA ------------------------------------------------------------------------------------------------------------------------------------------------------------- //
							linha(8);
							System.out.printf("║ ► Valor total da compra: R$ %.2f\t\t\t\t\t\t║\n", valorTotalCompra );
							System.out.printf("║   Imposto de 9%% embutido no valor total: R$ %.2f\t\t\t\t║\n", ((valorTotalCompra / 100.0) * 9.0));
							linha(9);
							System.out.printf("║ ► Opções de pagamento:\t\t\t\t\t\t\t║\n");
							System.out.printf("║     1 - Pagamento à vista com 10%% de desconto: R$ %.2f\t\t\t║\n", ((valorTotalCompra / 100) * 90));
							System.out.printf("║     2 - No cartão com acréscimo de 10%%: R$ %.2f\t\t\t\t║\n",((valorTotalCompra / 100) * 110));
							System.out.printf("║     3 - 2x com 15%% de acréscimo, valor de cada parcela: R$ %.2f\t\t║\n",((valorTotalCompra / 200) * 115));
							linha(7);
							
							// 9 - (faça - enquanto) que valida se a opção de pagamento é válida.				
							do {
							
								System.out.printf("Escolha a sua opção de pagamento: ");
								opcaoPagamento = leia.next().charAt(0);
								
								if (opcaoPagamento != '1' && opcaoPagamento != '2' && opcaoPagamento != '3') {
									System.out.printf("Digite uma opção válida!\n");	
								}
							// (FIM) 9 - (faça - enquanto) que valida se a opção de pagamento é válida.
							} while(opcaoPagamento != '1' && opcaoPagamento != '2' && opcaoPagamento != '3');
							
							if (opcaoPagamento == '1') {
								valorFatura = ((valorTotalCompra / 100) * 90);
								quantidadeFaturas = 0;
							}
							else if (opcaoPagamento == '2') { 
								valorFatura = ((valorTotalCompra / 100) * 110);
								quantidadeFaturas = 1;
							}
							else {
								valorFatura = ((valorTotalCompra / 200) * 115);
								quantidadeFaturas = 2;
							}
						}
						
						else {
							System.out.print("\n  Digite um valor válido para a resposta!\n");
						}
					// (FIM) 5 - (faça - enquanto) valida se a resposta de continuar compras é ou "S" ou "N".
					} while (continuarCompras != 'S' && continuarCompras != 'N');
	// FIM - PÁGINA DE FINALIZAÇÃO DA COMPRA ------------------------------------------------------------------------------------------------------------------------------------------------------------- //


				// (FIM) 4 - (faça - enquanto) valida a pergunta continuar compras.
				} while (continuarCompras == 'S');

				for (x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
				// novo estoque inicial é formado pelos produtos que não foram retirados da compra anterior.
				estoqueInicial[x] -= estoqueSelecionado[x];

				// no fim da compra o carrinho se esvazia
				carrinho[x] = 0; 
				}
				
	//NOTA FISCAL APÓS A COMPRA SER FINALIZADA ---------------------------------------------------------------------------------------------------------------------------------------------------------- //
				paginaDeCompras(x, codigo, produto, valor, estoqueInicial, carrinho, estoqueSelecionado, carrinhoVazio);

				notaFiscal(x, estoqueSelecionado, valorFatura, quantidadeFaturas, codigo, valor, produto, Integer.parseInt(numeroNotaFiscal)+1, contadorNotaFiscal);
				contadorNotaFiscal ++;
				numeroNotaFiscal = Integer.toString(contadorNotaFiscal-1);
	// (FIM) NOTA FISCAL APÓS A COMPRA SER FINALIZADA --------------------------------------------------------------------------------------------------------------------------------------------------- //
				
				
				do {
				// 10 - (faça - enquanto) valida a resposta para voltar à página inicial.
					System.out.print("\n Voltar para a página inicial? [S/N]: ");
					respostaVoltarInicio = leia.next().toUpperCase().charAt(0);
					
					if (respostaVoltarInicio == 'N') {
						System.out.print("  ATÉ BREVE!!!");
						break;
					}
					else if (respostaVoltarInicio != 'S') {
						System.out.print("Digite uma resposta válida!\n");
					}

				// (FIM) 10 - (faça - enquanto) valida a resposta para voltar à página inicial.	
				} while(respostaVoltarInicio != 'N' && respostaVoltarInicio != 'S');
				
			}
			
			// condicional responsável pela respostas [S/N]
			else if (fazerCompras == 'N') {
				System.out.print("  ATÉ BREVE!!!");
				break;
			} 
			else {
				limpa();
				cabecalho(3);
				System.out.print("  Digite uma resposta válida!\n");
			}
			
		// 1 - (laço faça - enquanto) valida "fazer compras".
		} while (fazerCompras != 'N' && fazerCompras != 'S');
		

	//a compra foi finalizada, então quando retornar ao início, o estoque selecionado será igual a zero.
	for (x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
		estoqueSelecionado[x] = 0;
	}
	
	// a compra foi finalizada, então quando retornar ao início, a resposta continuar compras volta a ser SIM.
	continuarCompras = 'S';

	//(laço faça - enquanto) responsável por retornar ao início após a compra.	
	} while(respostaVoltarInicio == 'S');
	
	leia.close();
}


// FIM DO PROGRAMA -------------------------------------------------------------------- //

		
		
			

	
	
		//cabecalho (inteiro linhaPrincipal)
	public static void cabecalho(int linhaPrincipal)  {
		System.out.println("\t\t      ► PORTO GOL ACESSÓRIOS ESPORTIVOS ◄");
		System.out.println("\t Desconto real, qualidade constante, satisfação por inteiro !");
		linha(linhaPrincipal);	
	}
	
	
	// FUNÇÃO PÁGINA DE COMPRAS --------------------------------------------------------------------------------------------------------------------------------------------------------------------- //
		// Chama a "loja" com seus produtos e o carrinho.
		public static void paginaDeCompras (int x, String codigo[], String produto[], String valor[], int estoqueInicial[], int carrinho[], int estoqueSelecionado[], int carrinhoQuantidade ) {
			
			limpa();
			cabecalho(4);
			System.out.println("║ Cód\t│ Produto\t\t\t│ Valor\t\t  │ Estoque\t\t║");
			linha(6);
						
			/* (laço para) que cria as informações presentes abaixo do menu: 
			códigos, produtos, valores e estoque.*/
			for(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) { 
							
				System.out.print("║ "+ codigo[x]+"\t│ "+produto[x]+"\t│ "+valor[x]+"\t  │ "+estoqueInicial[x]+"\t\t\t║\n");	
						
			}
						
			// carrinho de compras.
			linha(1);
			System.out.printf("║ Carrinho de compras\t\t\t\t\t\t\t\t║\n");
			System.out.printf("║         ┌┐\t\t\t\t\t\t\t\t\t║\n");
			System.out.printf("║  ┌┬┬┬┬┬┐⌡ \t\t\t\t\t\t\t\t\t║\n");
			
			carrinhoQuantidade = 0;
			
			for(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
				if (carrinho[x] == 1 && estoqueSelecionado[x] != 0) {
						carrinhoQuantidade++;
				}
			}
			if (carrinhoQuantidade == 0) {
				System.out.printf("║  └_____/ \t\t\t\t► Seu carrinho está vazio ◄\t\t║\n");
			}
			else  {
				System.out.printf("║  └_____/ \t\t\t\t► Adicione mais produtos! ◄\t\t║\n");
			}
			System.out.print("║    σ  σ ["+carrinhoQuantidade+"]\t\t\t\t\t\t\t\t\t║\n");
			System.out.printf("║\t\t\t\t\t\t\t\t\t\t║\n");
			for(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
				if (carrinho[x] == 1 && estoqueSelecionado[x] != 0) {
					System.out.print("║ "+ codigo[x]+"\t│ "+produto[x]+"\t│ "+valor[x]+"\t  │["+ estoqueInicial[x]+ "] QTDE - \t"+ estoqueSelecionado[x]+ "\t║\n");
				}
			}
			linha(7);
		}
			 {
				
				
			}
		// FIM DA FUNÇÃO PÁGINA DE COMPRAS --------------------------------------------------------------------------------------------------------------------- //	
	
			 public static void linha(int tipoLinha) {
		
		if(tipoLinha == 0) {
			
			System.out.println("║-------------------------------------------------------------------------------║");
		}
		else if(tipoLinha == 1) {
			
			System.out.println("╟───────┴───────────────────────────────┴─────────────────┴─────────────────────╢");
			
		}
		
		else if(tipoLinha == 6) { 
			System.out.println("╟───────┼───────────────────────────────┼─────────────────┼─────────────────────╢");
			
		}
		
		else if(tipoLinha == 3) {
			
			System.out.println("\n═══════════════════════════════════════════════════════════════════════════════");
			
		}
		
		else if(tipoLinha == 4) {
			
			System.out.println("\n╔═══════╤═══════════════════════════════╤═════════════════╤═════════════════════╗");
			
		}
		
		else if(tipoLinha == 5) {
			
			System.out.println("╚═══════╧═══════════════════════════════╧═════════════════╧═════════════════════╝");

		}

		else if(tipoLinha == 7) {
			
			System.out.println("╚═══════════════════════════════════════════════════════════════════════════════╝");
		
		}
		
		else if(tipoLinha == 8) {
			
			System.out.println("╔═══════════════════════════════════════════════════════════════════════════════╗");
			
		}
		
		else if(tipoLinha == 9) {
		
			System.out.println("╟───────────────────────────────────────────────────────────────────────────────╢");
		}
		
		else if(tipoLinha == 10) {
			
			System.out.println("─────────────────────────────────────────────────────────────────────────────────");
			
		}
		
	}
	// FUNÇÃO LIMPA ---------------------------------------------------------------------------------------------- //

	public static void limpa() {
	
		for(int x = 0; x < 50; x++ ) {
			System.out.println("");
		}
	
	}
//FUNÇÃO LIMPA ---------------------------------------------------------------------------------------------- //
	

	// FUNÇÃO NOTA FISCAL ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- //
	/* cria a nota fiscal no fim da compra e armazena valores de notas anteriores,
	por meio de matrizes, quando a pessoa pedir apertando a tecla [V].*/

	public static void notaFiscal (int x, int estoqueSelecionado[], double valorFatura, int quantidadeFaturas, String codigo[], String valor[], String produto[], int numeroNotaFiscal, int contadorNotaFiscal) {

		// se o numero da Nota for igual ao do contador, significa que é uma nova nota, ou seja, novos valores serão guardados.
		// Caso não seja igual, quer dizer que a pessoa está querendo uma nota passada, então o valor já havia sido guardado previamente.
		if (numeroNotaFiscal == contadorNotaFiscal) {
			
			anoCalendario = LocalDate.now();
			horaCalendario = Calendar.HOUR;
			minutoCalendario = Calendar.MINUTE;
			
	
			for (int colunaMatriz = 0 ; colunaMatriz < DIVERSIDADE_PRODUTOS ; colunaMatriz ++) {
				estoqueSelecionadoMatriz[numeroNotaFiscal][colunaMatriz] = estoqueSelecionado[colunaMatriz];
				
				codigoMatriz[numeroNotaFiscal][colunaMatriz] = codigo[colunaMatriz];
				
				valorMatriz[numeroNotaFiscal][colunaMatriz] = valor[colunaMatriz];
				
				produtoMatriz[numeroNotaFiscal][colunaMatriz] = produto[colunaMatriz];
			}	
			
			xVetor[numeroNotaFiscal] = x;
			
			valorFaturaVetor[numeroNotaFiscal] = valorFatura;
			
			quantidadeFaturasVetor[numeroNotaFiscal] = quantidadeFaturas;
			
			anoCalendarioVetor[numeroNotaFiscal] = anoCalendario;
			
			horaCalendarioVetor[numeroNotaFiscal] = horaCalendario;
			
			minutoCalendarioVetor[numeroNotaFiscal] = minutoCalendario;
		}		
	System.out.printf("\n ► NOTA FISCAL ---------------------------------------------------------------\n");
	System.out.printf("┌───────────────────────────────────────────────────────────────────────────────┐\n");
	System.out.printf("│ ┌──────────────────┬────────────────────┬───────────────────────────────────┐ │\n");
	System.out.printf("│ │                  │ DANFE              │ Código de Barras                  │ │\n");
	System.out.printf("│ │ Porto-Gol.com.br │ 0 - entrada        │ ||| ||| | ||||| || || ||||| ||    │ │\n");
	System.out.printf("│ │                  │ 1 - saída          │                                   │ │\n");
	System.out.printf("│ └──────────────────┴────────────────────┴───────────────────────────────────┘ │\n");
	System.out.printf("│ ┌─────────────────────────────┬─────────────────────────────────────────────┐ │\n");
	System.out.printf("│ │ Natureza da operação        │ Número de Protocolo                         │ │\n");
	System.out.printf("│ │ Venda de mercadorias        │ xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx     │ │\n");
	System.out.printf("│ └─────────────────────────────┴─────────────────────────────────────────────┘ │\n");
	System.out.printf("│  Destinatário/ remetente                                                      │\n");
	System.out.printf("│ ┌───────────────────────┬─────────────────────────┐┌────────────────────────┐ │\n");
	System.out.printf("│ │ Nome/ Razão Social    │ CPF                     ││ Data de emissão        │ │\n");
	System.out.printf("│ │ XXXXXXXXXXXXXX        │ XXX.XXX.XXX-XX          ││ \t%s\t      │ │\n", anoCalendarioVetor[numeroNotaFiscal]);
	System.out.printf("│ ├───────────────────┬───┴─────────────┬───────────┤├────────────────────────┤ │\n");
	System.out.printf("│ │ Endereço          │ Bairro/ Distrito│ CEP       ││ Data de Saída/ Entrada │ │\n");
	System.out.printf("│ │ xxx xxxxxxxxxxx   │ xxxx xxxx       │ xxxxx-xxx ││ \t%s\t      │ │\n", anoCalendarioVetor[numeroNotaFiscal]);
	System.out.printf("│ ├────────────┬────┬─┴──────────┬──────┴───────────┤├────────────────────────┤ │\n");
	System.out.printf("│ │ Município  │ UF │ CEP        │ Fone             ││ Hora da Saída          │ │\n");
	System.out.printf("│ │ xxxxxxx    │ XX │ xxxxx-xxx  │ xxxxx-xxxx       ││   %s:%s\t\t      │ │\n", horaCalendarioVetor[numeroNotaFiscal], minutoCalendarioVetor[numeroNotaFiscal]);
	System.out.printf("│ └────────────┴────┴────────────┴──────────────────┘└────────────────────────┘ │\n");
	System.out.printf("│  Valor das Faturas                                                            │\n");
	System.out.printf("│ ┌───────────┬──────────────────────────────────┬────────────────────┬───────┐ │\n");
	System.out.printf("│ │ Número    │ Vencimento                       │ Valor              │ QTD   │ │\n");
	System.out.printf("│ │ XXXXXX    │ xx/xx/xxxx                       │ %.2f\t      │\t%d     │ │\n", valorFaturaVetor[numeroNotaFiscal], quantidadeFaturasVetor[numeroNotaFiscal]);
	System.out.printf("│ └───────────┴──────────────────────────────────┴────────────────────┴───────┘ │\n");
	System.out.printf("│  Itens da Nota Fiscal                                                         │\n");
	System.out.printf("│ ┌───────┬─────────────────────────┬──────┬──────────┬───────────┬───────────┐ │\n");
	System.out.printf("│ │ Cód.  │ Produto                 │ QTDE.│ Valor Un.│ Valor Tot.│ Imposto   │ │\n");
					

	// Série de formatações para que valores com diferentes números de caracteres não quebrem o layout da página.				
	for(x=0 ; x < DIVERSIDADE_PRODUTOS ; x++) {
		
		if (estoqueSelecionadoMatriz[numeroNotaFiscal][x] != 0) {
						
				if (numeroNotaFiscal == contadorNotaFiscal) {
					if (x <= 8) {
					formataCodigo = codigoMatriz[numeroNotaFiscal][x] + " ";
					}
					else {
					formataCodigo = codigoMatriz[numeroNotaFiscal][x];
					}
										
					if (estoqueSelecionadoMatriz[numeroNotaFiscal][x] <= 9) {
					formataEstoqueSelecionado[x] = estoqueSelecionadoMatriz[numeroNotaFiscal][x] + " ";
					}
					else {
					formataEstoqueSelecionado[x] = estoqueSelecionadoMatriz[numeroNotaFiscal][x] +"";	
					}
			
					formataValorTotal[x] = String.valueOf((Double.parseDouble(valorMatriz[numeroNotaFiscal][x]) * estoqueSelecionadoMatriz[numeroNotaFiscal][x]));
										
					formataImposto[x] =  ((Double.parseDouble(formataValorTotal[x]) / 100) * 9);
										
		 
					formataValorTotalNumero = ( String.valueOf((Double.parseDouble(valorMatriz[numeroNotaFiscal][x]) * estoqueSelecionado[x]))).length();
					
					while (formataValorTotalNumero <= 7) {
					formataValorTotalNumero ++;
					formataValorTotal[x] += " ";
					}
					
				}					
					if (formataImposto[x] >= 10) {
						System.out.printf("│ │ %s │ %s │  %s  │  %s  │ %s  │ %.2f     │ │\n", formataCodigo, produtoMatriz[numeroNotaFiscal][x], formataEstoqueSelecionado[x], valorMatriz[numeroNotaFiscal][x], formataValorTotal[x], formataImposto[x]);	
					}
					else {
						System.out.printf("│ │ %s │ %s │  %s  │  %s  │ %s  │ %.2f      │ │\n", formataCodigo, produtoMatriz[numeroNotaFiscal][x], formataEstoqueSelecionado[x], valorMatriz[numeroNotaFiscal][x], formataValorTotal[x], formataImposto[x]);
					}
				}
	}
	System.out.printf("│ └───────┴─────────────────────────┴──────┴──────────┴───────────┴───────────┘ │\n");
	System.out.printf("└───────────────────────────────────────────────────────────────────────────────┘\n");
					
	}
	// FIM DA FUNÇÃO NOTA FISCAL ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- //

	/* Nós somos alunes da Generation Brasil, esse é o nosso estudo sobre princípios da lógica de programação feito em Portugol.
	 *  Equipe:
	 *  Ana Carolina Gonzales 
	 *  Andrei Felipe
	 *  Fábio Campaner Suzuki
	 *  Marcos Coutinho
	 *  Stefani Tosi
	 *  Vinícios Lisboa
	 } */ 

}