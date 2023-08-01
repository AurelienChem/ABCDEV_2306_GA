package fonction1_4;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	
	int numTestJoueur;
	int numTestOrdi = 0 + (int)(Math.random() * ((100 - 0) + 1));
	int numRandom = 0 + (int)(Math.random() * ((100 - 0) + 1)); // Min + (int)(Math.random() * ((Max - Min) + 1)), inclus Max et Min
	int enter = 0;
	int intervalleJoueur;
	int intervalleOrdi;
	int minJoueur = 0;
	int minOrdi = 0;
	int maxJoueur = 100;
	int maxOrdi = 100;
	
		do {
		System.out.println("Entrez une nombre entier compris entre 0 et 100 :");
		numTestJoueur = sc.nextInt();
		enter = enter + 1;
		intervalleJoueur = numTestJoueur;
		intervalleOrdi = numTestOrdi;
		
		
			if(numTestJoueur > 100 || numTestJoueur < 0) {
				System.out.println("Invalide. \nLe nombre doit etre comprise entre 0 et 100");
				}
			else if(numTestJoueur > numRandom) {
				System.out.println("Choisir un numero plus petit (entre " + intervalleJoueur + " et " + minJoueur + ") \n Numero choisi par l'ordinateur (entre " + intervalleOrdi + " et "  + minOrdi + ") : " + numTestOrdi);
				maxJoueur = intervalleJoueur;
				maxOrdi = intervalleOrdi;
				numTestOrdi = maxOrdi - (int)(Math.random() * ((maxOrdi - minOrdi) + 1));
				}
			
			else if(numTestJoueur < numRandom) {
				System.out.println("Choisir un numero plus grand (entre " + maxJoueur + " et " + intervalleJoueur + ") \n Numero choisi par l'ordinateur (entre " + intervalleOrdi + " et "  + maxOrdi + ") : " + numTestOrdi);
				minJoueur = intervalleJoueur;
				minOrdi = intervalleOrdi;
				numTestOrdi = minOrdi + (int)(Math.random() * ((maxOrdi - maxOrdi) + 1));
				}
			else if(numTestJoueur == numRandom) {
				System.out.println("Bravo, vous avez devine le bon numero en " + enter + " coups !");
				break;
				}
			else if(numTestOrdi == numRandom) {
				System.out.println("Dommage, vous avez perdu, le numero etait " + numRandom + " en " + enter + " coups !");
				break;
				}
			
			} 
		
		while(numTestJoueur <= 100 || numTestJoueur >= 0); {

		}

	sc.close();
	
	}
	
}
