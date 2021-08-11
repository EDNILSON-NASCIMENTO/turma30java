package classes;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

class ContaTest {
	
	@Test 
	void testDebito() {
		//cenario
		//execucao
		//verificação
		
		//cenario
		Conta cc1 = new ContaEstudantil(1,"JOAO",5000.00);
		
		//execução
		cc1.debito(-1);
		double valor = cc1.getSaldo();
		
		//verificao
		Assertions.assertEquals(valor,0);
		
		
	}

}
