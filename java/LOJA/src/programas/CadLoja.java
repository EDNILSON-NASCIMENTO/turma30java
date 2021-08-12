package programas;

import entidades.Produto;

public class CadLoja {

	public static void main(String[] args) {
	
		Produto prod1 = new Produto("001","CAMISA");
		Produto prod2 = new Produto("002","CALÇA",100.50,1);
		
			
		prod2.retiraEstoque(5);
		prod1.incluiEstoque(-1);
		System.out.println(prod1.getNome()+" qtde "+prod1.getEstoque());
		System.out.println(prod2.getNome()+" qtde "+prod2.getEstoque());
		prod2.retiraEstoque(2);
		System.out.println(prod2.getNome()+" qtde "+prod2.getEstoque());
		prod2.retiraEstoque(5);
		System.out.println(prod2.getNome()+" qtde "+prod2.getEstoque());
	}

}
