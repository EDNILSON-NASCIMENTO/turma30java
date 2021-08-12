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
		String auxCod;
		int pos=-1;
		char op;
		List<Produto> lista = new ArrayList<>();
		List<Produto> carrinho = new ArrayList<>();
		
		
		lista.add(new Revista("T001","EXAME",50.00,10,"ABRIL"));
		lista.add(new Livro("T010","HARRY PORTER",10.00,30,"SERVANT"));
		lista.add(new Doces("T007","BALA DADINHO",0.10,100,"DADINHO DOCES"));
		
		//leia.nextLine();
		do {
			pos = -1;
			System.out.println("COD\tVALOR\tESTOQUE\tPRODUTO");
			for (Produto item : lista) {
				System.out.println(item.getCodigo()+"\t"+item.getValor()+"\t"+item.getEstoque()+"\t"+item.getNome()+((item.getEstoque()>0)?" ":"\tPRODUTO INDISPONIVEL"));
			}
			System.out.println("CARRINHO DE COMPRAS");
			System.out.println("COD\tVALOR\tESTOQUE\tPRODUTO");
			for (Produto escolhido : carrinho) {
				System.out.println(escolhido.getCodigo()+"\t"+escolhido.getValor()+"\t"+escolhido.getEstoque()+"\t"+escolhido.getNome());
			}
			System.out.print("Digite o CODIGO do produto: ");
			auxCod = leia.next().toUpperCase();
			//pos = lista.indexOf(auxCod);
			
			for (int x=0; x<lista.size(); x++ ) {
				
				if (lista.get(x).getCodigo().equals(auxCod)) {
					pos = x;
					break;
				}
				
			}
		
			if (pos>=0) {
				System.out.println("Produto escolhido: ");
				System.out.println("COD\tVALOR\tESTOQUE\tPRODUTO");
				System.out.printf("%s\t%.2f\t%d\t%s\n",lista.get(pos).getCodigo(),lista.get(pos).getValor(),lista.get(pos).getEstoque(),lista.get(pos).getNome());
				System.out.println("Informe quantos tu vai querer :");
				int auxQtde = leia.nextInt();
				
				if (auxQtde< 0) {
					System.out.println("Impossivel realizar, valor negativo!!! Ae não né!!!");
				}
				else if (auxQtde==0) {
					System.out.println("Impossivel realizar, quantidade zero. Tá dificil!");
				}
				else if (lista.get(pos).getEstoque()==0){
					System.out.println("Impossivel realizar, produto sem estoque!!!");
				}
				else if (lista.get(pos).getEstoque()< auxQtde) {
					System.out.print("Impossivel realizar, quantidade maior que estoque!!");
				} else {
					carrinho.add(new Produto(lista.get(pos).getCodigo(),lista.get(pos).getNome(),lista.get(pos).getValor(),auxQtde));
				}
			}
			else {
				System.out.println("Codigo informado não existe!!!");
			}
			System.out.println("Continua S-sim ou N-nao :");
			op = leia.next().toUpperCase().charAt(0);
			//fechamento do carrinho - não ta pronto
			//System.out.println("vc vai pagar : R$"+(auxQtde*lista.get(pos).getValor()));
			//lista.get(pos).retiraEstoque(auxQtde);
		} while (op=='S');
		System.out.println("FECHAMENTO DA COMPRA");
		System.out.println("COD\tVALOR\tESTOQUE\tPRODUTO");
		double auxTotal=0;
		for (Produto escolhido : carrinho) {
				for (int x=0; x<lista.size(); x++ ) {
					
					if (lista.get(x).getCodigo().equals(escolhido.getCodigo())) {
						pos = x;
						break;
					}
					
				}
			
			System.out.println(escolhido.getCodigo()+"\t"+escolhido.getValor()+"\t"+escolhido.getEstoque()+"\t"+escolhido.getNome());
			auxTotal = auxTotal + (escolhido.getValor()*escolhido.getEstoque());
			lista.get(pos).retiraEstoque(escolhido.getEstoque());
		}
		System.out.println("FECHAMENTO R$: "+auxTotal);
		carrinho.clear();
		
		System.out.println("LISTA ATUAL");
		System.out.println("COD\tVALOR\tESTOQUE\tPRODUTO");
		for (Produto item : lista) {
			
			System.out.println(item.getCodigo()+"\t"+item.getValor()+"\t"+item.getEstoque()+"\t"+item.getNome());
		}
		System.out.println("ATÉ BREVE!!!");
	}

}
