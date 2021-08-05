package introducao;

import java.util.Scanner;

public class Copinha {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		
		String codTime[] = new String[4];
		String nomesTimes[] = {"SANTOS       ","SPFC        ","PALMEIRAS","CORINTHIANS"};
		int pontosTimes[] = {0,0,0,0};
		char op;
		String auxCod;
		
		//"CPF-01"
		for (int x=0; x<codTime.length; x++) { 
			
			if (x==9) {
				codTime[x] = "CPF-"+(x+1);
			}
			else {
				codTime[x] = "CPF-0"+(x+1);
				
			}
		
		}
		System.out.println("INICIO DA TABELA");
		System.out.println("COD\tTIME     \tPONTOS");
		for(int x=0;x<codTime.length; x++) {
			System.out.printf("%s\t%s\t%d\n",codTime[x],nomesTimes[x],pontosTimes[x]);
		}
		System.out.println();
		//laço que roda o numero de rodadas que vc deseja
		for (int x=1; x<=3; x++) {
			System.out.println("Rodada "+x);
			//laço que roda todos os times
			for (int y=0; y<codTime.length; y++) {
				System.out.print(nomesTimes[y]+" G-ganhou, P-perdeu ou E-empatou : ");
				op = leia.next().toUpperCase().charAt(0);
				if (op =='G') {
					pontosTimes[y] = pontosTimes[y]+3;
				}
				else if (op =='E') {
					pontosTimes[y] += 1; //pontosTimes[y] = pontosTimes[y]+1
				} 
				else if (op =='P') {
					pontosTimes[y] += 0; //pontosTimes[y] = pontosTimes[y]+1
				}
				else {
					System.out.println("Vc não escolheu um codigo correto, vai fica zero!");
				}
			}
		}
		System.out.println("APÓS 3 RODADAS");
		System.out.println("COD\tTIME     \tPONTOS");
		for(int x=0;x<codTime.length; x++) {
			System.out.printf("%s\t%s\t%d\n",codTime[x],nomesTimes[x],pontosTimes[x]);
		}
		System.out.println();
		System.out.println("Digite o codigo do time que deseja selecionar :");
		auxCod = leia.next().toUpperCase();
		
		System.out.println("COD\tTIME     \tPONTOS");
		for(int x=0;x<codTime.length; x++) {
			if ( auxCod.equals(codTime[x])  ) {
				System.out.printf("%s\t%s\t%d\n",codTime[x],nomesTimes[x],pontosTimes[x]);
			}
		}
	}
}
