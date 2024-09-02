<?php

class Voiture
{

	protected $marque;
	protected $modele;
	protected $poids = 1000;

	public function __construct(string $marque, string $modele, int $poids) {
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

		$this->poids = $poids;
	}

	public function __toString(): string
	{
		return "{$this->getMarque()} {$this->getModele()}, {$this->getPoids()} Kg";
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
}

try {
	$myVoiture = new Voiture('Toyota', 'Sprinter', 900);
	echo $myVoiture;
}

catch (Exception $e) {
    echo 'Caught exception: ',  $e->getMessage(), "\n";
}

