package exercice3_2;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int somme;
		double nbMagasin;
		
		System.out.println("Saisir la somme S");
		somme = sc.nextInt();
		
		nbMagasin = Math.ceil((somme - 2)*Math.pow(somme, -2)+2);
		
		
		for(int i = 0; i <= 10; i++) {
			if(nbMagasin > 3) {
				
				System.out.println(i + "," + nbMagasin);
			}
		}
		sc.close();
	}
}
