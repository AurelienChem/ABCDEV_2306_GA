package tableau1_8;

import java.util.Scanner;

public class App {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		int nombre;
		
		System.out.println("Entrez le nombre de valeurs");
		nombre = sc.nextInt();
	
		int tableau[]=new int[nombre];
		System.out.println("Entrez les valeurs dans le tableau");
		
		for(int i=0;i<nombre;i++)
		{
		tableau[i]=sc.nextInt();
		}
		
		for(int i=0;i<nombre;i++)
		{
			if(tableau[i] ) {
				
			}
		}
		
		
		sc.close();
	}
	

}