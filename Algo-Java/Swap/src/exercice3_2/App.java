package exercice3_2;

import java.util.Scanner;

public class App {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		double somme;
		double nbMagasin;
		
		System.out.println("Saisir la somme S :");
		somme = sc.nextInt();
		
		if(somme < 2) {
			System.out.println("La somme utilise est trop petite");
		}
		
		else {
			System.out.println("Saisir la somme S :");
		}
		
		for(int i = 1; i <= somme; i++) {
			somme = somme/2 - 1;
			System.out.println(i + " , " + somme);
			
			if(somme < 2) {
				System.out.println("Barnabe peut visiter jusqu'a " + (i+1) + " magasins avec une somme de " + somme + ".");
				break;
			}
		}
		
		sc.close();
	}
}
