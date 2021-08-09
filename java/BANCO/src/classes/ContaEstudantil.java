package classes;

public class ContaEstudantil extends Conta {
	private double limiteEstudantil;

	public ContaEstudantil(int numero, String nomeCliente, double limiteEstudantil) {
		super(numero, nomeCliente);
		this.limiteEstudantil = limiteEstudantil;
	}

	public double getLimiteEstudantil() {
		return limiteEstudantil;
	}

	public void setLimiteEstudantil(double limiteEstudantil) {
		this.limiteEstudantil = limiteEstudantil;
	}
	
	
	public void limiteEstudantil(double valor) {
		double auxvalor =0.0;
		if (valor>(super.getSaldo()+this.limiteEstudantil)) {
			System.out.println("Impossivel realizar");
		}
		else if (valor>super.getSaldo()) {
			auxvalor = valor - super.getSaldo();
			super.credito(auxvalor);
			limiteEstudantil = limiteEstudantil - auxvalor;
			System.out.println("Novo limite estudantil :"+limiteEstudantil);
		}
		
	}
	
	
}
