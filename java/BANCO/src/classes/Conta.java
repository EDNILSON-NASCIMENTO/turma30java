package classes;

public abstract class Conta {
	
	private int numero;
	private String nomeCliente;
	private double saldo;
	
	public Conta(int numero, String nomeCliente) {
		super();
		this.numero = numero;
		this.nomeCliente = nomeCliente;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getNomeCliente() {
		return nomeCliente;
	}

	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}

	public double getSaldo() {
		return saldo;
	}
	/*
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	*/
	
	public void debito(double valor) {
		if (valor < 0) {
			System.out.println("Valor negativo, impossivel realizar!!!");
			//throw new RuntimeException("Não é permitido informar valores negativos.");
		}
		else if (valor > saldo ) {
			System.out.println("Impossivel realizar...");
		}
		else {
			saldo = saldo - valor;
		}
		
	}
	
	public void credito(double valor) {
		if (valor < 0) {
			System.out.println("Valor informado invalido!!!");
		}
		else {
		saldo = saldo + valor;
		}
	}
	
	
	
	
	
}
