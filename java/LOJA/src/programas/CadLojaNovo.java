package programas;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



public class CadLojaNovo {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		List<String> cadastro = new ArrayList<>();
		
		int x=0;
		Integer y=0;
		double salario;
		String auxNome;
		
		
		cadastro.add("SPFC");
		cadastro.add("SANTOS");
		cadastro.add("PALMEIRAS");
		cadastro.add("CORINTHIANS");
		cadastro.add("JUVENTUS");
		
		System.out.println("Tamanho da lista :"+cadastro.size());
		
		cadastro.add(1,"GUARANI");
		
		System.out.println(cadastro.get(4));
		x=0;
		for (String time : cadastro) {
			System.out.println(x+" - "+time);
			x++;
		}
		System.out.println("Digite o nome do time que deseja apagar :");
		auxNome = leia.next().toUpperCase();
		x = cadastro.indexOf(auxNome);
		System.out.println("Vc escolheu o time "+cadastro.get(x)+" este time será retirado da lista!!!");
		cadastro.remove(x);
		System.out.println("NOVA LISTA!!!");
	
		for (String time : cadastro) {
			System.out.println(cadastro.indexOf(time)+" - "+time);
		}
		
		

	}

}
