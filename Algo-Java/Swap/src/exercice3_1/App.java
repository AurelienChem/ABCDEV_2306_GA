package exercice3_1;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	
	int numTest;
	int numRandom = 0 + (int)(Math.random() * ((100 - 0) + 1)); // Min + (int)(Math.random() * ((Max - Min) + 1)), inclus Max et Min
	
		do {
		System.out.println("Entrez une nombre entier compris entre 0 et 100 :");
		numTest = sc.nextInt();
		
			if(numTest > 100 || numTest < 0) {
				System.out.println("Invalide. \nLe nombre doit etre comprise entre 0 et 100");
				}
		
			else if(numTest == numRandom) {
				System.out.println("Bravo, vous avez devine le bon numero !");
				break;
				}
			
			else if(numTest > numRandom) {
				System.out.println("Choisir un numero plus petit");
				}
			
			else {
				System.out.println("Choisir un numero plus grand");
				}
			} 
		
			while(numTest <= 100 || numTest >= 0); {

		}

	sc.close();
	
	}
	
}

	