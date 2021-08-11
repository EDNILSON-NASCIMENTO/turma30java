package entities;

public class Carro implements Sons, Corre{

	
	
	@Override
	public void somAlto() {
		System.out.println("BI BI BI BI BI ");
		
	}

	@Override
	public void somBaixo() {
		System.out.println("bi bi bi bi ");
		
	}

	@Override
	public void correRapido() {
		for (int x=1; x<80; x++) {
			System.out.print("=");
		}
		System.out.println();
		System.out.println("De 0 a 100 em 1 segundo...");
		
	}

	@Override
	public void correDevagar() {
		// TODO Auto-generated method stub
		for (int x=1; x<30; x++) {
			System.out.print("=");
		}
		System.out.println();
		System.out.println("De 0 a 20 em 1 segundo...");
	}

	@Override
	public void correPraQue() {
		// TODO Auto-generated method stub
		System.out.println("Corre, pra quê?");
	}
	
}
