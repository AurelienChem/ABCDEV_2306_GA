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

$myVoiture = new Voiture('Toyota', 'Sprinter', 900);
echo $myVoiture;

