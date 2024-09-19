<?php
require_once ('Client.php');
require_once ('Intervenant.php');

class Intervention
{

	protected string $dateIntervention;
	protected string $descIntervention;
	protected Client $client;
	protected Intervenant $intervenant;

	function __construct($dateIntervention, $descIntervention, $client, $intervenant)
	{
		$this->dateIntervention = $dateIntervention;
		$this->descIntervention = $descIntervention;
		$this->client = $client;
		$this->intervenant = $intervenant;
	}

	function __toString()
	{
		return "{$this->dateIntervention}, {$this->descIntervention}, {$this->client}, {$this->intervenant}";
	}

	function getdateIntervention(): string
	{
		return $this->dateIntervention;
	}

	function getdescIntervention(): string
	{
		return $this->descIntervention;
	}

	function getClient(): Client
	{
		return $this->client;
	}

	function getIntervenant(): Intervenant
	{
		return $this->intervenant;
	}

	function setdateIntervention($dateIntervention): void
	{
		$this->dateIntervention = $dateIntervention;
	}

	function setdescIntervention($descIntervention): void
	{
		$this->descIntervention = $descIntervention;
	}

}
