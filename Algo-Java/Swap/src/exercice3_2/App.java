package exercice3_2;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int somme;
		double nbMagasin;
		
		System.out.println("Saisir la somme S");
		somme = sc.nextInt();
		
		nbMagasin = Math.ceil((Math.log(somme)-Math.log(2))/Math.log(2)+1);
		System.out.println("Le nombre de magasin est " + nbMagasin);
		
		sc.close();
	}
}
