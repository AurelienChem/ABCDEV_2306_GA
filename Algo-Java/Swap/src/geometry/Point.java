package geometry;

public class Point {

	double abscisse;
	double ordonne;
	
	public Point() {
		
		abscisse = 0;
		ordonne = 0;
	}
	
	public double Point(double _abscisse, double _ordonne) {
		
		abscisse = _abscisse;
		ordonne = _ordonne;
		return Math.pow(abscisse*abscisse + ordonne*ordonne, 1/2);
	}
	
}
