package programas;

public class Aluno {
	
	//atributos - variavel
	public String nome;
	public String matricula;
	public boolean ativo;
	public int nota;
	public int anoNascimento;
	
	//sobrecarga - mais do mesmo
	//construtores 
	//encapsulamento - segurança - getters and setters
	//metodos
	
	public void mostraIdade() {
		System.out.println("a idade é "+(2021-this.anoNascimento));
	}
	
	//sobrecarga de metodo
	public void mostraIdade(int anoAtual) {
		System.out.println("a idade é "+(anoAtual-this.anoNascimento));
	}
	public void mostraIdade(int anoAtual, int anoNascimento) {
		if (anoNascimento != this.anoNascimento) {
			System.out.println("Vc trocou o ano de nascimento, valeu!!!");
		}
		System.out.println("a idade é "+(anoAtual-anoNascimento));
	}
	
	//polimorfismo
	//herança
	//abstração
	//delegação
	//override - annotation
	
	
	
}
