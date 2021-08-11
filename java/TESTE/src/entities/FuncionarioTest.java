package entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import junit.framework.Assert;

class FuncionarioTest {

	@Test
	void testSalario() {
		//cenario
		Funcionario func1 = new Terceiro("001",10,10.00,1);
		double salario;
		//execução
		salario = func1.salario();
		
		//VERIFICAÇÃO
		Assert.assertEquals(salario, 101.00);
		
	}

	
	@Test
	void testSalarioNegativo() {
		//cenario
				Funcionario func1 = new Funcionario("001",-10,-10.00);
				double salario;
				//execução
				salario = func1.salario();
				
				//VERIFICAÇÃO
				Assert.assertEquals(salario, 0.00);
	}
}
