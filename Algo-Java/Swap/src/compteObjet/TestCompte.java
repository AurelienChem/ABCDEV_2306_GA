package compteObjet;

public class TestCompte {
	public static void main(String[] args) {
		
		Compte compte = new Compte("Caisse d'Epargne", 1000);
		
		compte.deposer(); // ne pas mettre de types de donnees quand renvoie void
		compte.retirer();
		compte.afficher();
	}
}
