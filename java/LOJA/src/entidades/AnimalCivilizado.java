package entidades;

public class AnimalCivilizado extends Animal{

	private String raca;
	private char porte; //P - G - M
	private boolean cercado;
	private boolean vacinado;
	
	public AnimalCivilizado(String especie, String raca, char porte) {
		super(especie);
		this.raca = raca;
		this.porte = porte;
	}
	
	
	
	
}
