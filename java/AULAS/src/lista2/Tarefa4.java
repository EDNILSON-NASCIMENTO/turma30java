package lista2;

import java.util.Scanner;

public class Tarefa4 {

	public static void main(String[] args) {
		
		/*
		 * 	Fa�a um programa em que permita a entrada de um n�mero
			qualquer e exiba se este n�mero � par ou �mpar.
			Se for par exiba tamb�m a raiz quadrada do mesmo;
			se for �mpar exiba o n�mero elevado ao quadrado.
		 */
		//algoritmo - receita de bolo
		
		//variaveis - ingredientes
		Scanner leia = new Scanner (System.in);
		double numero = 0.00;
		
		//entradas
		
		System.out.print("Digite um numero : ");
		numero = leia.nextDouble();
		
		//processamentos

		if(numero<0) {
			System.out.println("Impossivel realizar, numero negativo!!!");
		}
		else if (numero==0) {
			System.out.println("Zero � neutro!!!");
		}
		else if ((numero%2)==0) {
			System.out.println("O numero � par!!!");
			System.out.printf("a raiz quadrada de %.2f � %.2f !!!",numero,Math.sqrt(numero));
		}
		else if ((numero%2)==1) {
			System.out.println("O numero � impar!! ");
			System.out.printf("o numero %.2f ao quadrado � %.2f !!!",numero,Math.pow(numero, 2));
		}
		//saidas

	}

}
