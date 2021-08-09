package classes;

public final class ContaPoupanca  extends Conta {
	
	private int diaAniversarioPoupanca;

	public ContaPoupanca(int numero, String nomeCliente, int diaAniversarioPoupanca) {
		super(numero, nomeCliente);
		this.diaAniversarioPoupanca = diaAniversarioPoupanca;
	}

	public int getDiaAniversarioPoupanca() {
		return diaAniversarioPoupanca;
	}

	public void setDiaAniversarioPoupanca(int diaAniversarioPoupanca) {
		this.diaAniversarioPoupanca = diaAniversarioPoupanca;
	}
	
	public void correcao(int diaAtual) {
		if (diaAtual == this.diaAniversarioPoupanca) {
			super.credito(super.getSaldo()*0.005);
		}
	}
	
}
