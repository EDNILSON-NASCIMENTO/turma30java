package programas;

public class CadAluno {

	public static void main(String[] args) {
		
		String nome[] = {"Ana Beatriz Yujra Espejo","Ana Carolina Gonzalez de Souza","Ana Paula Souza Dias","Anderson Coelho da Costa","Andrei Felipe Corrêa de Souza","Ariel de Barros Pirangy Soares","Beatriz dos Santos Teixeira","Beatriz Gomes de Abreu","Caio Saldanha Motta","Cássia de Arruda Nicolau Santos","Emerson da Silva Santana","Enzo Fulaneto","Ester Gomes Neves Nascimento","Fábio Campaner Suzuki","Felipe Matos de Lima","Felipe Souza da Silva","Flávio Augusto da Costa","Giovanna Siqueira Paiva dos Penedos","Gustavo Mesquita Ferreira","Henrique Uriel Lopes","João Pedro Cruz Gomes","José Paulo de Matos Ferreira Neto","Letícia Porto Martins","Lucas Silva Nunes de Aguiar","Maicon Gomes Cerqueira","Marcos Vinicius Coutinho Rego","Matheus de Araujo Farina","Matheus de Brito Milani","Natália Regina dos Santos Rocha","Pamela Paulino","Renata dos Santos Ferreira","Rodrigo Roseo Lopes da Costa","Sabrina Alves de Paiva","Sergio de Jesus Severo","Stefani Fernanda Pereira Tosi","Talita gleice maria da gloria da Silva Lima","Thiago da Silva Machado","Vinícios Lisboa da Silva","Vinicius Cardoso Siqueira Francisco"};
		
		int nota[] = new int[39];
		String matricula[] = new String[39];  //MAT-0X
		boolean ativo[] = new boolean[39]; //true / false
		
		System.out.println("MAT\tSTATUS\tNOTA\tNOME");
		for (int x=0; x<39; x++) {
			nota[x] = 0;
			ativo[x] = true;
			matricula[x] = "MAT-0"+(x+1);
			if (ativo[x]==true) {
				System.out.println(matricula[x]+"\t"+"ATIVO\t"+nota[x]+"\t"+nome[x]);
			} else {
				System.out.println(matricula[x]+"\t"+"INATIVO\t"+nota[x]+"\t"+nome[x]);
			}
			
			//System.out.println(matricula[x]+"\t"+((ativo[x]==true)?"ATIVO":"INATIVO")+"\t"+nota[x]+"\t"+nome[x]);
			
		}
		
		
		//mostra todo mundo
		//laço e pede :
		//pedi pela matricula 1 aluno
		//informar a nota deste aluno
		//vai informar se o aluno ainda continua ativo ou não [o usuario não pode
		//digitar true ou false
		//tem que fazer o processo até que pergunta continua sim ou não seja não
		//após mostra todos os alunos com nota pela regra
		// até 5 - estude mais
		// acima de 5 - otimo, continue assim
		// aluno inativo ou aluno ativo baseado no true ou false de ativo
		//somente dos alunos que tem nota
		
	}

}
