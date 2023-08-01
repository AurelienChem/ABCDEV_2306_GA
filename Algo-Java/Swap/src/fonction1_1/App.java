package fonction1_1;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args)
	{

	Scanner sc = new Scanner(System.in);
	
		int nbCB;
		int nbCheque;
		int nbVirement;
		
		System.out.println("Entrez le nombre de paiement par carte bleue : ");
		nbCB = sc.nextInt();
		
		System.out.println("Entrez le nombre de cheque emis : ");
		nbCheque = sc.nextInt();
		
		System.out.println("Entrez le nombre de virement automatique : ");
		nbVirement = sc.nextInt();
		
		System.out.println("Nombre de paiements par Carte Bleue est : " + nbCB );
		System.out.println("Nombre de cheques emis : " + nbCheque);
		System.out.println("Nombre de virements automatiques : " + nbVirement);
		System.out.println("Vous avez emis " + ordre(nbCB, nbCheque, nbVirement) + " ordres de debit dont :");
		System.out.println(CB(nbCB, nbCheque, nbVirement) + " % par Carte Bleue");
		System.out.println(cheque(nbCB, nbCheque, nbVirement) + " % par cheque");
		System.out.println(virement(nbCB, nbCheque, nbVirement) + " % virement");
		
	sc.close();
	
	}
	
	private static int ordre(int a, int b, int c) {
		int resultatOrdre = a + b + c;
		return resultatOrdre;
	
	}
		
	private static double CB(double a, double b, double c) {
		double resultatCB = a/(a + b + c)*100;
		return resultatCB;
		
	}
	
	private static double cheque(double a, double b, double c) {
		double resultatCheque = b/(a + b + c)*100;
		return resultatCheque;
		
	}
	
	private static double virement(double a, double b, double c) {
		double resultatVirement = c/(a + b + c)*100;
		return resultatVirement;
		
	}
	
}
