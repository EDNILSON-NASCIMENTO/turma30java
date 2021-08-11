package programas;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import entidades.Doces;
import entidades.Livro;
import entidades.Produto;
import entidades.Revista;


public class CadProd {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner leia = new Scanner(System.in);
		
		List<Produto> lista = new ArrayList<>();
		Revista rev1 = new Revista("001","EXAME",50.00,10,"ABRIL");
		
		lista.add(new Revista("001","EXAME",50.00,10,"ABRIL"));
		lista.add(new Livro("010","HARRY PORTER",10.00,30,"SERVANT"));
		lista.add(new Doces("007","BALA DADINHO",0.10,100,"DADINHO DOCES"));
		System.out.println("COD\tVALOR\tESTOQUE\tPRODUTO");
		for (Produto item : lista) {
			System.out.println(item.getCodigo()+"\t"+item.getValor()+"\t"+item.getEstoque()+"\t"+item.getNome());
		}
		
		
	}

}
