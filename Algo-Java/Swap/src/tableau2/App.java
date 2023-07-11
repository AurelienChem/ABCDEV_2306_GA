package tableau2;

import java.util.Scanner;

public class App {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		String motTest = " ";
		String lettreTest = " ";
		var position = (motTest.indexOf(lettreTest));
		position = 0;
		
		System.out.println("Entrez un mot");
		motTest = sc.next();
		
		System.out.println("Entrez une lettre");
		lettreTest = sc.next();
		
		for(int i=0; i < motTest.length(); i++) {
		
			if(motTest.indexOf(lettreTest) == i) {
				System.out.println(motTest.indexOf(lettreTest) +" est present dans le mot");
					position++;
				 }
			else {
				System.out.println(motTest.indexOf(lettreTest) + " est pas present dans le mot");
				 }
		}
		sc.close();

	}

}
