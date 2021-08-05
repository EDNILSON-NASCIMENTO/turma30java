package introducao;

public class TesteEquals {

	public static void main(String[] args) {
		
		
		String nome = "EPAMINONDAS";
		
		String teste[] = new String[2];
		
		teste[1]= "EPAMINONDAS";
		System.out.println(teste[1]);
		if (nome.equals(teste[1])) {
			System.out.println("o nome tá certo!!!");
		}
		
	}

}
