package geometry;

public class Point {

	double abscisse;
	double ordonne;
	
	public Point() {
		
		System.out.println("Creation d'un point par defaut");
		
		abscisse = 0;
		ordonne = 0;
	}
	
	public Point(double _abscisse, double _ordonne) {
		
		abscisse = _abscisse;
		ordonne = _ordonne;
	}
	
}
