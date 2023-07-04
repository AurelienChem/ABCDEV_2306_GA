package Premier;

import java.util.Scanner;

public class App {
	
	   public static void main(String[] args) 
	   {  
	       Scanner sc = new Scanner(System.in);
	       int A;
	       
	       System.out.println("Entrez un nombre : ");  
	       A = sc.nextInt();  
	       if (verifiePremier(A)) {  
	           System.out.println(A + " est un nombre premier");  
	       }
	       else 
	       {  
	           System.out.println(A + " n'est pas un nombre premier");  
	       }  
	   }  
	   
	   public static boolean verifiePremier(int A) 
	   
	   {  
	       if (A <= 1) 
	       {  
	           return false;  
	       }  
	       for (int i = 2; i <= Math.sqrt(A); i++) 
	       {  
	           if (A % i == 0) 
	           {  
	               return false;  
	           }  
	       }  
	       return true;  
	   }  
	}
