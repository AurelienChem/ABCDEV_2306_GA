package rectangleObjet;

import java.util.Scanner;

public class Rectangle {
	
	Scanner sc = new Scanner(System.in);
	
	double longueur;
	double largeur;
	
	public Rectangle() {
		
		System.out.println("Creation d'un rectangle par defaut");
		
		longueur = 0;
		largeur = 0;
		
	}
	
	public Rectangle(double _longueur, double _largeur) {
		
		longueur = _longueur;
		largeur = _largeur;
	
	}
	
	public double perimetre() {
		 double perimetre = 2*this.longueur + 2*this.largeur;
		return perimetre; 	
	}
	
	public double surface() {
		 double perimetre = this.longueur*this.largeur;
		return perimetre;	
	}
	
	public void afficher() {
		System.out.print("Le perimetre vaut : " + perimetre() + " et la surface vaut : " + surface());
		
	}

}
