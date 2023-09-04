package voitureObjet;

import java.util.Scanner;

public class Voiture {
	Scanner sc = new Scanner(System.in);
	
	private String marque;
	private double prix;
	
	public Voiture() {
		
		marque = "inconnu"; // Creation d'un constructeur par défaut
		prix = 0;
		
	}
	
	public String getMarque() {
		return this.marque;
	}
	
	public double getPrix() {
		return this.prix;
	}
	
	public void setMarque(String _Marque) {
		this.marque = _Marque;
	}
	
	public void setPrix(double _Prix) {
		this.prix = _Prix;
	}
	
	public void afficher() {
		System.out.println("La marque de la voiture est : " + this.marque + ", son prix est : " + this.prix);
	}
}
