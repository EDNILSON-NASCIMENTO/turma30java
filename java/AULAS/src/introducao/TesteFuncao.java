package introducao;

import java.util.Scanner;

public class TesteFuncao {

	
	
	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		int anoNascimento;
		String nome;
		
		int tamanho = 50;
		
		System.out.println(tue2(2005,2051));
		
	}
	
	//sub-programas - modulo
	public static void linhaBasica() {
		System.out.println("------------------------------------------------");
	}
	
	public static void linha(int tamanho) {
		for (int x=1; x<=tamanho; x++) {
			System.out.print("-");
		}
		System.out.println();
	}
	
	public static String tue(int ano) {
		
		int idade;
		idade = 2021-ano;
		String resposta;
		if (idade <13) {
			resposta = "criança";
		}
		else if (idade <18) {
			resposta = "adolescente";
		}
		else if (idade <30) {
			resposta = "jovem";
		}
		else if (idade < 45) {
			resposta = "adulto";
		} else {
			resposta = "Cringe";
		}
		
		return resposta;
	}
public static String tue2(int ano, int anoAtual) {
		
		int idade;
		idade = anoAtual-ano;
		String resposta;
		if (idade <13) {
			resposta = "criança";
		}
		else if (idade <18) {
			resposta = "adolescente";
		}
		else if (idade <30) {
			resposta = "jovem";
		}
		else if (idade < 45) {
			resposta = "adulto";
		} else {
			resposta = "Cringe";
		}
		
		return resposta;
	}
}
