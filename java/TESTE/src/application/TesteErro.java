package application;

import java.util.Scanner;


public class TesteErro {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		int valor;
		int valores[] = new int[4]; //0-3
		/*
		 * try {
		 * 
		 * } catch (erro){
		 * 	tratar de alguma forma esse erro
		 * }
		 */
		try {
			System.out.println("Digite a posição dentro do vetor 0-3 :");
			valor = leia.nextInt();
			System.out.println("Digite um valor inteiro :");
			valores[valor] = leia.nextInt();
			
			System.out.printf("O valor digitado na posição %d foi %d!!!\n",valor,valores[valor]);
			System.out.println("valor da divisão teste :"+valores[valor]/valor);
			
		}
		catch (Exception erro) {
			System.out.println("Vc errou!!!");
			
			System.out.println(erro.getMessage());
			erro.printStackTrace();
			
		}
		finally {
			System.out.println("Fechando o teclado!!!");
			leia.close();
			
		}
		/*
		catch (java.lang.ArithmeticException erro) {
			System.out.println("Impossivel dividi por zero!!! Fui banda mel!!!");
		}
		catch (java.util.InputMismatchException erro) {
			System.out.println("Digite um numero inteiro por favor!!!");
		}
		catch (java.lang.ArrayIndexOutOfBoundsException erro) {
			System.out.println("Tamanho do vetor é de 0 a 3, digite direito!!!");
		}
		*/
		System.out.println("Fim de programa!!!");
		

	}

}
