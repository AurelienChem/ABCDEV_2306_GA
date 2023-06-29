package jalon;

import util.Scanner;

{ public class App; 

{

	// Déclaration des variables
	
	String Prenom;
	String Nom;
	Int Departement;
	String Mail;
	
	Scanner scan;
	scan.(System.In);
	
		System.out.println("Saisir Prenom");
		Prenom = nextString();
		
		System.out.println("Saisir Nom");
		Nom = nextString();
		
		System.out.println("Saisir Departement");
		Departement = nextInt();
		
		Mail = Prenom + "." + Nom + Departement + "arfp@asso.fr";
		
		System.out.println("Mail");
		
	scan.close();
}