package classes;

public class Pessoa {
	
	//ATRIBUTOS
	private String nome;
	private int anoNascimento;
	private String cpf;
	private char pronome; //O,A,E
	private boolean ativo;
	
	//CONSTRUTORES
	public Pessoa() {
		
	}
	
	public Pessoa(String nome) {
		this.nome = nome;
		
	}
	
	public Pessoa(String nome, String cpf) {
		this.nome = nome;
		this.cpf = cpf;
	}
		
	
	public Pessoa(String nome, int anoNascimento, String cpf, boolean ativo) {
		super();
		this.nome = nome;
		this.anoNascimento = anoNascimento;
		this.cpf = cpf;
		this.ativo = ativo;
	}
	//encapsulamento - getters and setters
	
	
	
	
	
	public void mostrarIdade() {
		System.out.println(2021-anoNascimento);
	}
	
	public String getNome() {
		return nome;
	}
	
	public String trasNome() {
		return nome;
	}

		public int getAnoNascimento() {
		return anoNascimento;
	}

	public void setAnoNascimento(int anoNascimento) {
		this.anoNascimento = anoNascimento;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public char getPronome() {
		return pronome;
	}

	public void setPronome(char pronome) {
		this.pronome = pronome;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public int calcIdade(int anoAtual) {
		int valor;
		valor = anoAtual - anoNascimento;
		return valor; 
	}
}
