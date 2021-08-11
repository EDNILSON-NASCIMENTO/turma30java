package application;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import entities.Ave;
import entities.Cachorro;
import entities.Carro;
import entities.Gato;
import entities.Pet;
import entities.Porco;

public class TestePet {

	public static void main(String[] args) {
		
		
		Scanner leia = new Scanner(System.in);
		Cachorro pet1 = new Cachorro("PITBULL",true); //true or false
		Gato pet2 = new Gato("SIAMES",2014,true);
		Porco pig51 = new Porco(true);
		Ave pet3 = new Ave("PAPAGAIO",true);
		Carro car1 = new Carro();
		
		
		List <Pet> lista = new ArrayList<>();
		List <Pet> carrinho = new ArrayList<>();
		
		
		lista.add(new Cachorro("PITBULL",true));
		lista.add(new Gato("SIAMES",true));
		lista.add(new Ave("PAPAGAIO",true));
		
		/*
		for (int x=0; x<lista.size(); x++) {
			lista.get(x).emiteSom();
		}
		*/
		
		System.out.println("CODIGO\tBICHO");
		int x=0;
		for (Pet bicho : lista) {
			System.out.println(x+"\t"+bicho.getRaca());
			x++;
		}
		
		System.out.println("Selecione o codigo de um bicho :");
		x = leia.nextInt();
		System.out.println("Bicho escolhido para compra : "+lista.get(x).getRaca());
		carrinho.add(new Pet( lista.get(x).getRaca()));
		
		for (Pet compras : carrinho) {
			System.out.println("Bicho comprado :"+compras.getRaca());
		}
		
			
	}

}
