package introducao;

import java.util.Scanner;

public class Exemplos {
	
	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		String nome;
		char opcao; //m, f, e
		
		System.out.print("Digite o nome : ");
		nome = leia.nextLine().toUpperCase();
		System.out.println("Selecione M-masculino, F-Feminino ou E-neutro :");
		opcao = leia.next().toUpperCase().charAt(0);
		if (opcao == 'M') {
			System.out.println("Selecionado masculino");
		}
		else if (opcao=='F') {
			System.out.println("Selecionado feminina");
		} else if (opcao=='E') {
			System.out.println("Selecionado neutro - ellu");
		}
		System.out.println();
		System.out.printf ("[vers�o printf ] O nome digitado foi %s \n",nome.toUpperCase());
		System.out.println("[vers�o println] O nome digitado foi "+nome);
		System.out.println("a quantidade de caracteres do nome digitado � "+nome.length());
		
		
		leia.close();
	}

}
