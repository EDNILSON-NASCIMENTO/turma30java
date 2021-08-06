package programas;

import java.util.Scanner;



public class CadNovoAluno {

	public static void main(String[] args) {
		
		//instanciar um aluno
		
		Scanner leia = new Scanner(System.in);
		Aluno exemplo1 = new Aluno(); //objeto do tipo aluno
		
		System.out.println("Digite  o nome do aluno :");
		exemplo1.nome = leia.next();
		System.out.println("Digite a matricula :");
		exemplo1.matricula = leia.next().toUpperCase();
		System.out.println("Digite o ano de nascimento");
		exemplo1.anoNascimento = leia.nextInt();
		
		System.out.println("Matricula "+exemplo1.matricula);
		System.out.println("Nome :"+exemplo1.nome);
		exemplo1.mostraIdade();
		
		
		
		
	}

}
