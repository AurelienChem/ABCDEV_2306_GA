<?php

class Voiture
{

	protected $marque;
	protected $modele;
	protected $poids = 1000;

	public function __construct(string $marque, string $modele, int $poids) {
		$this->marque = $marque;
		$this->modele = $modele;
		$this->poids = $poids;
	}

	public function __toString(): string
	{
		if(mb_strlen($this->getMarque()) < 2 ) {
			return 'Veuillez saisir une marque avec plus de un caractère';
		}
		elseif(mb_strlen($this->getModele()) < 1 ) {
			return 'Veuillez saisir un modèle';
		}
		else if($this->getPoids() <= 0 && preg_match('/[0-9]/', $this->getPoids())) {
			return 'Veuillez saisir un poids en nombre supérieur à 0';
		}
		else {
			return "{$this->getMarque()} {$this->getModele()}, {$this->getPoids()} Kg";
		}
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

$myVoiture = new Voiture('TOYOTA', 'Sprinter', 0);
echo $myVoiture;

