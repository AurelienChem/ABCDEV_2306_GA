package exercice9boucle;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		int nbChevauxPartant;
		int nbChevauxJoues;
		double factoriellePartant = 1;
		double factorielleJoues = 1;
		double factorielleDiff = 1;
		
	do {
		System.out.println("Entrez le nombre de chevaux partant :");
		nbChevauxPartant = sc.nextInt();
		
		System.out.println("Entrez le nombre de chevaux joues (3, 4 ou 5) :");
		nbChevauxJoues = sc.nextInt();
		
		if(nbChevauxJoues == 3 || nbChevauxJoues == 4 || nbChevauxJoues == 5 ) {
		    for(int i=1; i <= nbChevauxPartant; i++){ 
		    	factoriellePartant = factoriellePartant * i;
		    }
		    for(int j=1; j <= nbChevauxJoues; j++){ 
		    	factorielleJoues = factorielleJoues * j;
		    }
			for(int k=1; k <= nbChevauxPartant - nbChevauxJoues; k++){ 
		    	factorielleDiff = (factoriellePartant - factorielleJoues) * k;
		    }
			System.out.println("Les chances de gagner le tirage (" + nbChevauxJoues + " chevaux joues pour " + nbChevauxPartant +  " chevaux partant) sont \nDans l'ordre : " + (factoriellePartant/factorielleDiff) + "%\nDans le desordre :" + ((factoriellePartant/(factorielleJoues * factorielleDiff))) + "%");
			break;
		}
		else {
			System.out.println("Saisie invalide :");	
		}
	} while(nbChevauxPartant > nbChevauxJoues || nbChevauxJoues > 2 || nbChevauxJoues < 6 );
	}
}
