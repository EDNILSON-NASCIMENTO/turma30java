package introducao;

import java.util.Scanner;

public class Copinha {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		String time1="SANTOS", time2="SPFC", time3="PALMEIRAS", time4="CORINTHIANS";
		int ponto1=0, ponto2=0, ponto3=0, ponto4=0;
		
		String times[] = new String[4];
		int pontos[] = {0,0,0,0};
		
		
		char op='X'; //G GANHOU - 3, P - PERDEU - 0, E - EMPATOU - 1
		
		for (int x=1;x<=2;x++) {
			
			System.out.println("RODADA : "+x);
			System.out.print(time1+" G-ganhou, P-perdeu ou E-empatou : ");
			op = leia.next().toUpperCase().charAt(0);
			if (op == 'G') {
				ponto1 += 3;
				//ponto1 = ponto1 + 3;
			}
			else if (op=='E') {
				ponto1 += 1;
			}
			else if (op=='P') {
				ponto1 += 0;
			} 
			else {
				System.out.println("Digitou errado,  vai fica com 0 !!!");
			}
			System.out.print(time2+" G-ganhou, P-perdeu ou E-empatou : ");
			op = leia.next().toUpperCase().charAt(0);
			if (op == 'G') {
				ponto2 += 3;
				//ponto1 = ponto1 + 3;
			}
			else if (op=='E') {
				ponto2 += 1;
			}
			else if (op=='P') {
				ponto2 += 0;
			} 
			else {
				System.out.println("Digitou errado,  vai fica com 0 !!!");
			}
			System.out.print(time3+" G-ganhou, P-perdeu ou E-empatou : ");
			op = leia.next().toUpperCase().charAt(0);
			if (op == 'G') {
				ponto3 += 3;
				//ponto1 = ponto1 + 3;
			}
			else if (op=='E') {
				ponto3 += 1;
			}
			else if (op=='P') {
				ponto3 += 0;
			} 
			else {
				System.out.println("Digitou errado,  vai fica com 0 !!!");
			}
			System.out.print(time4+" G-ganhou, P-perdeu ou E-empatou : ");
			op = leia.next().toUpperCase().charAt(0);
			if (op == 'G') {
				ponto4 += 3;
				//ponto1 = ponto1 + 3;
			}
			else if (op=='E') {
				ponto4 += 1;
			}
			else if (op=='P') {
				ponto4 += 0;
			} 
			else {
				System.out.println("Digitou errado,  vai fica com 0 !!!");
			}


		}
		System.out.println();
		System.out.println("TABELA");
		System.out.printf("Time: %s pontos atuais : %d ponto(s)!!!\n", time1, ponto1);
		System.out.printf("Time: %s pontos atuais : %d ponto(s)!!!\n", time2, ponto2);
		System.out.printf("Time: %s pontos atuais : %d ponto(s)!!!\n", time3, ponto3);
		System.out.printf("Time: %s pontos atuais : %d ponto(s)!!!\n", time4, ponto4);
		
		/*
		 * para (inteiro x=1; x<=4; x++){
		 * escreva(time1+" G-ganhou, P-perdeu ou E-empatou : ")
		 * leia(op)
			 * se (op=='G'){
			 * 	ponto1=3
			 * }
			 * senao se (op=='E') {
			 * ponto1=1
			 * }
			 * senao {
			 * ponto1 = 0
			 * }
			 *
			 * escreva(time2+" G-ganhou, P-perdeu ou E-empatou : ")
			 * leia(op)
			 * se (op=='G'){
			 * 	ponto1=3
			 * }
			 * senao se (op=='E') {
			 * ponto1=1
			 * }
			 * senao {
			 * ponto1 = 0
			 * }
			}
		 */
		
		
	}

}
