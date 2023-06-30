package exercice2_2;

import java.util.Scanner;

public class App2 {
	
	public static void main(String[] args) {
	
		Scanner scan;
		int A, B;
		
		scan = new Scanner(System.in);
		
		System.out.println("Saisir le numero A");
		A = scan.nextInt();
		
		System.out.println("Saisir le numero B");
		B = scan.nextInt();
		
		if(A == B) {
			System.out.println(A + " = " + B);
		}
		
		else if(A > B) {
			System.out.println(B + " < " + A);
		}
		
		else {
			System.out.println(A + " < " + B);
			
		}
		
		scan.close();
	}
}
