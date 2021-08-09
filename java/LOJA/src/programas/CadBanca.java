package programas;

import java.util.Scanner;

import entidades.Livro;

public class CadBanca {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		System.out.print("Digita o codigo :");
		String codigo = leia.next();
		leia.nextLine();
		System.out.print("Digite o nome do livro :");
		String nome = leia.nextLine().toUpperCase();
		System.out.print("Digite o valor R$ :");
		double valor = leia.nextDouble();
		System.out.print("Digite o estoque inicial :");
		int estoque = leia.nextInt();
		System.out.print("Digite a editora :");
		String editora = leia.next().toUpperCase();
		
		Livro book1 = new Livro(codigo,nome,valor,estoque,editora);
		
		System.out.println(book1.getNome()+" tem no estoque "+book1.getEstoque()+" ao valor de R$ "+book1.getValor());
		System.out.print("Vai querer quantos :");
		int quantidade = leia.nextInt();
		System.out.print("Vc vai paga "+book1.getValor()*quantidade);
		book1.retiraEstoque(quantidade);
		System.out.println("Estoque atual "+book1.getEstoque());
		
		
		
		
	}

}
