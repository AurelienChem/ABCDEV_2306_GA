package cercle;

import java.util.Scanner;

public class Cercle {
	
	public static void main(String[] args) {
		
		Scanner scan;
		double r, an, a , v , s;
		
		scan = new Scanner(System.in);
		
		System.out.println("Saisir le rayon R");
		r = scan.nextDouble();
		
		System.out.println("Saisir l'angle An");
		an = scan.nextDouble();
		
		if(an == 0) {
			
			a = 4*Math.PI*Math.pow(r, 2);
			v = (4/3)*Math.PI*Math.pow(r, 3);
			
			System.out.println("L'aire vaut " + a + " et le volume vaut " + v);
		}
		
		else {
			
			a = 4*Math.PI*Math.pow(r, 2);
			v = (4/3)*Math.PI*Math.pow(r, 3);
			s = Math.PI*Math.pow(r, 2)*an/360;
					
			System.out.println("L'aire vaut " + a + ", le volume vaut " + v + " et l’aire du secteur circulaire vaut " + s);
			
			
		scan.close();
			
		}
		
			
		
	}

}
