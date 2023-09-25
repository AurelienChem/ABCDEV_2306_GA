package jeuDeCartesObjet;


import java.util.HashSet;
import java.util.Random;
import java.util.Scanner;
import java.util.Set;

public class App {
		
		public static void main(String[] args) {
			
			Personnage personnage1 = new Personnage("Ricko", 6, 6, "Manger une pomme");
			Personnage personnage2 = new Personnage("Mike", 5, 7, "Cuire un oeuf");
			Personnage personnage3 = new Personnage("Mario", 7, 5, "Reparer sa voiture");
			Personnage personnage4 = new Personnage("Zeldu", 4, 8, "Chercher son arc");
			Personnage personnage5 = new Personnage("Chief", 8, 4, "Eplucher une patate");
			Personnage personnage6 = new Personnage("Snake", 3, 9, "Parler aux serpents");
			Personnage personnage7 = new Personnage("Freeman", 9, 3, "Ecrire une nouvelle loi");
			Personnage personnage8 = new Personnage("Bellic", 6, 6, "Chercher un ami");
			Personnage personnage9 = new Personnage("Drake", 7, 5, "Boire un verre d'eau");
			Personnage personnage10 = new Personnage("Peach", 8, 4, "Lire la doc SQL");
			
			System.out.println("Liste des cartes disponibles : \n");
			
			personnage1.setSpecificite();
			personnage1.afficherPersonnage();
			
			personnage2.setSpecificite();
			personnage2.afficherPersonnage();
			
			personnage3.setSpecificite();
			personnage3.afficherPersonnage();
			
			personnage4.setSpecificite();
			personnage4.afficherPersonnage();
			
			personnage5.setSpecificite();
			personnage5.afficherPersonnage();
			
			personnage6.setSpecificite();
			personnage6.afficherPersonnage();
			
			personnage7.setSpecificite();
			personnage7.afficherPersonnage();
			
			personnage8.setSpecificite();
			personnage8.afficherPersonnage();
			
			personnage9.setSpecificite();
			personnage9.afficherPersonnage();
			
			personnage10.setSpecificite();
			personnage10.afficherPersonnage();
			
			Scanner sc = new Scanner(System.in);
			
			String prenom;
			int anneeNaissance;
			
			System.out.println("\nEntrez votre pseudo : ");
			prenom = sc.nextLine();
			
			System.out.println("Entrez votre annee de naissance : ");
			anneeNaissance = sc.nextInt();
			
			System.out.println("Pseudo : " + prenom + ", Date : " + anneeNaissance + ", Vos cartes attribues sont  : \n");
			
			String[] carte = {"Ricko", "Mike", "Mario", "Zeldu", "Chief", "Snake", "Freeman", "Bellic", "Drake", "Peach"};
			
		    Random randomJoueur = new Random();
		    Random randomToto = new Random();
		    
		    int nextRandom = randomJoueur.nextInt(10); // 10 Parce que 10 cartes differentes
		    
	        Set<Integer> validate = new HashSet<>(); // Permet de tirer une carte sans remise

	        validate.add(nextRandom);
	        
	        for (int i = 0; i < 5; i++) { // 5 Car on veut choisir 5 cartes parmi les 10
	        	
	            while(validate.contains(nextRandom)) {
	                nextRandom = randomJoueur.nextInt(10);
	            }
	            validate.add(nextRandom);
	            System.out.println(carte[nextRandom]); // boucle pour le tirage
	       
	        }
	
	        System.out.println("\nPseudo : Toto, Date, 2000-01-01\n");
	        
		    int nextRandom1 = randomToto.nextInt(10); // 10 Parce que 10 cartes differentes
		    
	        Set<Integer> validate1 = new HashSet<>(); // Permet de tirer une carte sans remise

	        validate1.add(nextRandom1);
	        
	        for (int j = 0; j < 5; j++) { // 5 Car on veut choisir 5 cartes parmi les 10
	        	
	            while(validate1.contains(nextRandom1)) {
	                nextRandom1 = randomToto.nextInt(10);
	            }
	            validate1.add(nextRandom1);
	            System.out.println(carte[nextRandom1]); // boucle pour le tirage
	       
	        }
	        
	        
			sc.close();
		}
}
