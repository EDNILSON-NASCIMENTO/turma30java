package lista2;

import java.util.Scanner;

public class Tarefa4 {

	public static void main(String[] args) {
		
		/*
		 * 	Faça um programa em que permita a entrada de um número
			qualquer e exiba se este número é par ou ímpar.
			Se for par exiba também a raiz quadrada do mesmo;
			se for ímpar exiba o número elevado ao quadrado.
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
			System.out.println("Zero é neutro!!!");
		}
		else if ((numero%2)==0) {
			System.out.println("O numero é par!!!");
			System.out.printf("a raiz quadrada de %.2f é %.2f !!!",numero,Math.sqrt(numero));
		}
		else if ((numero%2)==1) {
			System.out.println("O numero é impar!! ");
			System.out.printf("o numero %.2f ao quadrado é %.2f !!!",numero,Math.pow(numero, 2));
		}
		//saidas

	}

}
