package exercice3_1;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	
	int numTest1;
	int numRandom = 0 + (int)(Math.random() * ((100 - 0) + 1)); // Min + (int)(Math.random() * ((Max - Min) + 1)), inclus Max et Min
	int enter = 0;
	
		do {
		System.out.println("Entrez une nombre entier compris entre 0 et 100 :");
		numTest1 = sc.nextInt();
		enter = enter + 1;
		
			if(numTest1 > 100 || numTest1 < 0) {
				System.out.println("Invalide. \nLe nombre doit etre comprise entre 0 et 100");
				}
		
			else if(numTest1 == numRandom) {
				System.out.println("Bravo, vous avez devine le bon numero en " + enter + " coups !");
				break;
				}
			
			else if(numTest1 > numRandom) {
				System.out.println("Choisir un numero plus petit ");
				}
			
			else {
				System.out.println("Choisir un numero plus grand ");
				}
			} 
		
		while(numTest1 <= 100 || numTest1 >= 0); {

		}

	sc.close();
	
	}
	
}

	