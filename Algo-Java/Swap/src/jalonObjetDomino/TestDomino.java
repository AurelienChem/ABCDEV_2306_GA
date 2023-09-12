package jalonObjetDomino;

public class TestDomino {
	public static void main(String[] args) {
		Domino domino = new Domino(96,44,28,12); // Choisir un nombre aléatoire
		
		domino.affichePoints1();
		domino.affichePoints2();
		domino.affichePoints3();
		domino.affichePoints4();
		domino.valeur1();
		domino.valeur2();
		domino.coteACote();
	}
}
