package compteObjet;

import java.util.Scanner;

public class Compte {
	Scanner sc = new Scanner(System.in);
	
	String nomBanque;
	double solde;
	
	public Compte() {
	
		System.out.println("Creation d'une banque par defaut");
		
		nomBanque = "inconnu";
		solde = 0; // parametres
		
	}
	
	public Compte(String _nomBanque, double _solde) {
	
		
		this.nomBanque = "Caisse d'Epargne";
		this.solde = 1000;
	}
	
	public void deposer() {
		double depot;
		System.out.println("Combien voulez-vous deposer ?");
		depot = sc.nextDouble();
		solde = solde + depot;
	}
	
	public void retirer() {
		double retrait;
		System.out.println("Combien voulez-vous retirer ?");
		retrait = sc.nextDouble();
		solde = solde - retrait;
	}
	
	public void afficher() {
		System.out.print("Le nouveau solde est de : " + solde);
	}
		
}
