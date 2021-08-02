package lista1;

import java.util.Scanner;

public class Tarefa6 {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		double x1;
		double x2;
		double y1;
		double y2;
		double d;
		double p1;
		double p2;
				
		System.out.print("Digite o valor de x1 : ");
		x1 = leia.nextDouble();
		System.out.print("Digite o valor de x2 :");
		x2 = leia.nextDouble();
		System.out.print("Digite o valor de y1 :");
		y1 = leia.nextDouble();
		System.out.print("Digite o valor de y2 : ");
		y2 = leia.nextDouble();
		
		d = Math.sqrt((Math.pow((x2-x1),2)+Math.pow((y2-y1),2)));
		//%f - double -  %.2f
		//%d - inteiro
		//%s - String
		
		//%b - boolean
		
		System.out.printf("Distância é %.2f\n",d);
		
	}

}
