package programas;

import classes.ContaPoupanca;

public class Teste {

	public static void main(String[] args) {
		
		ContaPoupanca cp1 = new ContaPoupanca(1,"CARLOS",1);
		
		cp1.credito(100);
		
		System.out.println("Saldo atual : R$ "+cp1.getSaldo());
		cp1.debito(101);
		System.out.println("Saldo atual : R$ "+cp1.getSaldo());
		
	}

}
