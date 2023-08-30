package geometry;

import java.util.Scanner;

public class Cercle {

	Scanner sc = new Scanner(System.in);
	
	Point centre = new Point(5,5);
	double rayon;
	double appartenance;
	
	public Cercle() {
		
		System.out.println("Creation d'un rectangle par defaut");
		
		rayon = 0;
		
	}
	
	public Cercle(double _rayon) {
		
		rayon = _rayon;
	
	}
	
	public double perimetre() {
		
		 double perimetre = 2*Math.PI*this.rayon;
		return perimetre;
		
	}
	
	public double surface() {
		
		 double surface = Math.PI*Math.pow(this.rayon, 2);
		return surface;
		
	}
	
	public void testAppartenance() {
		
		appartenance = Math.sqrt(Math.pow(centre.abscisse, 2) + Math.pow(centre.ordonne, 2));
		if(appartenance < this.rayon) {
			System.out.println("Le point est dans le cercle");
		}else {
			System.out.println("Le point n'est pas dans le cercle");
		}
	}
	
	public void afficher() {
		System.out.print("Le perimetre vaut : " + perimetre() + ", la surface vaut : " + surface());
		
	}
}
