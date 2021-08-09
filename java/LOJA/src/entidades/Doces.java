package entidades;

public class Doces extends Produto {

	
	private String fabricante;
	

	public Doces(String codigo, String nome, double valor, int estoque, String fabricante) {
		super(codigo, nome, valor, estoque);
		this.fabricante = fabricante;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	
	
	
	
	
}
