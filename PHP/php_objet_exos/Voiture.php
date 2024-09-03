<?php
require_once 'Moteur.php';
class Voiture
{

	protected string $marque;
	protected string $modele;
	protected int $poids = 1000;
	protected Moteur $moteur;

	public function __construct(string $marque, string $modele, int $poids, string $marqueMoteur, int $vitesseMax) {
		if(mb_strlen($marque) > 2) {
			$this->marque = $marque;
		}
		else {
			throw new Exception('Erreur, la marque indiqué possède moins de deux caractères');
		}

		if(mb_strlen($modele) > 1) {
			$this->modele = $modele;
		}
		else {
			throw new Exception('Erreur, il n y a pas de modèle indiqué');
		}

		if($poids > 0) {
			$this->poids = $poids;
		}
		else {
			throw new Exception('Le poids ne peut pas être inférieur ou égal à zéro');
		}

		$this->moteur = new Moteur($marqueMoteur, $vitesseMax);
	}

	public function getMarque(): string
	{
		return $this->marque;
	}

	public function getModele(): string
	{
		return $this->modele;
	}

	public function getPoids(): int
	{
		return $this->poids;
	}

	public function setMarque($marque): void
	{
		$this->marque = $marque;
	}

	public function setModele($modele): void
	{
		$this->modele = $modele;

	}

	public function setPoids($poids): void
	{
		$this->poids = $poids;
	}

	public function __toString(): string
	{
		return "{$this->getMarque()} {$this->getModele()}, {$this->getPoids()} Kg, {$this->moteur->getMarquemoteur()}, {$this->calculVitesseMax()} Km/h";
	}

	public function calculVitesseMax() : float {
		return $this->moteur->getVitesseMax() - ($this->poids * 0.3);
	}
}

try {
	$myVoiture = new Voiture('Toyota', 'Sprinter', 900, 'ToyotaMoteur', 300);
	echo $myVoiture;
}

catch (Exception $e) {
    echo 'Caught exception: ',  $e->getMessage(), "\n";
}

echo PHP_EOL;
