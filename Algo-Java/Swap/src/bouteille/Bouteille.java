package bouteille;

public class Bouteille {
	
	private double capaciteEnL;
	private double contenanceEnL;
	private boolean estOuverte;
	private String nomMarque;
	
	public Bouteille(){
		System.out.println("Creation d'une bouteille par defaut");
		capaciteEnL = 1;
		contenanceEnL = 0;
		estOuverte = true;
		nomMarque = "inconnu";
	}
	
	public Bouteille(double _capaciteEnL, double _contenanceEnL, boolean _estOuverte, String _nomMarque) {
		
		System.out.println("Creation d'une bouteille avec parametres");
		
		this.capaciteEnL = _capaciteEnL;
		this.contenanceEnL = _contenanceEnL;
		this.estOuverte = _estOuverte;
		this.nomMarque = _nomMarque;
	
	}
	
	public boolean ouvrir() {
		if(!this.estOuverte) {
			this.estOuverte = true;
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean fermer() {
		if(this.estOuverte) {
			this.estOuverte = false;
			return true;
		}
		else {
			return false;
		}
	}
	public boolean remplirTout() {
		if(this.estOuverte && this.contenanceEnL < this.capaciteEnL) {
			return true;
		}
		else {
			return false;
		}
		
	}
	
}
