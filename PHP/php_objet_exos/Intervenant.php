<?php
require_once ('Personne.php');

class Intervenant extends Personne
{

	protected float $autresRevenus;
	protected float $salaire;

	function __construct($age, $nom, $prenom, $autresRevenus, $salaire)
	{
		parent::__construct($age, $nom, $prenom);
		$this->autresRevenus = $autresRevenus;
		$this->salaire = $salaire;
	}

	function __toString()
	{
		return "{$this->age}, {$this->nom}, {$this->prenom}, {$this->autresRevenus}, {$this->salaire}";
	}

	function getAge(): int
	{
		return $this->age;
	}

	function getAutresRevenus(): float
	{
		return $this->autresRevenus;
	}

	function getNom(): string
	{
		return $this->nom;
	}

	function getPrenom(): string
	{
		return $this->prenom;
	}

	function setAutresRevenus($autresRevenus): void
	{
		$this->autresRevenus = $autresRevenus;
	}

	function setNom($nom): void
	{
		$this->nom = $nom;
	}

	function setSalaire($salaire)
	{
		$this->salaire = $salaire;
	}

}
