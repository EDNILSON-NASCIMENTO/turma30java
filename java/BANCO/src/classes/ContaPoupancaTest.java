package classes;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import junit.framework.Assert;

class ContaPoupancaTest {

	@Test
	void testCorrecao() {
		
		//cenario
		ContaPoupanca cp1 = new ContaPoupanca(1,"JOAO",1);
		double resultadoTeste;
		
		//execução
		cp1.credito(100.00);
		cp1.correcao(1);
		resultadoTeste = cp1.getSaldo();
		
		//verificação
		Assert.assertEquals(resultadoTeste,100.50);
	}

}
