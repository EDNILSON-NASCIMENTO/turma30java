package entities;

public class Porco implements Sons, Corre {
	
	private boolean pesado;

	public Porco(boolean pesado) {
		super();
		this.pesado = pesado;
	}

	@Override
	public void somAlto() {
		System.out.println("OINC OINC OINC");
		
	}

	@Override
	public void somBaixo() {
		System.out.println("oinc oinc oinc");
		
	}

	@Override
	public void correRapido() {
		System.out.println("Vaza porco.......");
		
	}

	@Override
	public void correDevagar() {
		System.out.println("Nesse passo tu vai virar bacon...");
		
	}

	@Override
	public void correPraQue() {
		System.out.println("Vixe......");
		
		
	}
	
	
}
