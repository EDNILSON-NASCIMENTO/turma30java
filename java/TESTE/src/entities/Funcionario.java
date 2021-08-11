package entities;

public class Funcionario {
	//atributos
	private String matricula;
	protected int horasTrabalhadas;
	protected double valorHora;
	
	//construtor
	public Funcionario(String matricula, int horasTrabalhadas, double valorHora) {
		super();
		this.matricula = matricula;
		if (horasTrabalhadas < 0) {
			this.horasTrabalhadas = 0;
		} else {
			this.horasTrabalhadas = horasTrabalhadas;
		}
		if (valorHora < 0) {
			this.valorHora = 0;
		} else {
			this.valorHora = valorHora;
		}
	}
	//encapsulamento - getter and setters
	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public int getHorasTrabalhadas() {
		return horasTrabalhadas;
	}

	public void setHorasTrabalhadas(int horasTrabalhadas) {
		this.horasTrabalhadas = horasTrabalhadas;
	}

	public double getValorHora() {
		return valorHora;
	}

	public void setValorHora(double valorHora) {
		this.valorHora = valorHora;
	}
	//metodo
	public double salario() {
		
		return valorHora*horasTrabalhadas;
	}
	
	public double salarioExtra() {
		return  500.00;
	}
	
	
	
}
