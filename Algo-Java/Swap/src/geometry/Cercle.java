package geometry;

import java.util.Scanner;

public class Cercle {

	Scanner sc = new Scanner(System.in);
	
	Point point = new Point();
	double rayon;
	boolean appartenance;
	
	public Cercle() {
		
		System.out.println("Creation d'un rectangle par defaut");
		
		rayon = 0;
		appartenance = false;
		
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
	
	public boolean testAppartenance() {
		
		if(this.point >= this.rayon) {
			return false;
		}
		else{
			return true;
		}
	}
	
	public void afficher() {
		System.out.print("Le perimetre vaut : " + perimetre() + ", la surface vaut : " + surface() + "et inscription dans le cercle : " + testAppartenance() + " " + testAppartenance());
		
	}
}
