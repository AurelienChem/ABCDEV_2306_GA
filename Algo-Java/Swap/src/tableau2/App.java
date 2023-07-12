package tableau2;

import java.util.Scanner;

public class App {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		String motTest = " ";
		String lettreTest = " ";
		
		System.out.println("Entrez un mot");
		motTest = sc.next();
		
		System.out.println("Entrez une lettre");
		lettreTest = sc.next();
		
		if(motTest.equals(" ") || motTest.equals(".")) {
			System.out.println("La phrase est vide");
		}
		else if (motTest.indexOf(lettreTest) != -1) {
			for(int i = motTest.indexOf(lettreTest); i >= 0;  i = motTest.indexOf(lettreTest, i + 1)) {
				System.out.println(lettreTest  + " est present dans le mot en position " + i);
			}
		}
		else {
			System.out.println(lettreTest +  " n'est pas present dans le mot");
		}
		sc.close();
	}
}