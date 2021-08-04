package introducao;

import java.util.Scanner;

public class TesteEnquanto {

	public static void main(String[] args) {
		
		
		//precisa do nome e do salario
		//informar o nome e salario da pessoa que tem o maior salario
		//o programa termina quando for digitado um valor negativo ou zero
		
		//variaveis
		Scanner leia = new Scanner(System.in);  //instan criar...
		String nome;
		int salario;
		int maiorSalario=0;
		String nomeMaiorSalario="";
		int contador=1;
		char op;
		
		//entradas
		
		 do {
			 leia.nextLine(); //limpa o buffer de teclado
			 if (contador>1) {
			 System.out.println("Continua S/N: ");
				op = leia.next().toUpperCase().charAt(0);
				if(op=='N'){
					break;
				}
			 }
			System.out.print("Digite o nome : ");
			nome = leia.next();
			System.out.print("Digita o salario : ");
			salario = leia.nextInt();
			
			if(salario > maiorSalario) {
				maiorSalario = salario;
				nomeMaiorSalario = nome;
			} 
			contador++;
			
		} while (salario>0);
		System.out.println();
		linha(80);
		if (maiorSalario>0) {
			System.out.printf("O maior salario é %d da pessoa %s\n", maiorSalario, nomeMaiorSalario );
		}
		
		System.out.println("Ate breve!!!");
		

	}
	
	public static void linha(int tamanho) {
		for (int x=1; x<=tamanho; x++) {
			System.out.print("-");
		}
		System.out.println();
	}

}
