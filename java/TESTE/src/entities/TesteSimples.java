package entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.Assert;
import org.junit.jupiter.api.Test;

class TesteSimples {

	@Test
	void test() {
		//cenario
		int valor1=-10, valor2=20;
		int resultado;
		//execucao
		resultado = valor1+valor2;
		
		//verificação
		Assert.assertEquals(resultado, 10);
		
		
		
	}

}
