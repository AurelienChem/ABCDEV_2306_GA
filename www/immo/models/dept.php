<?php

class Departement {
    private PDO $connexion;

    public function __construct()
    {
        $this->connexion = Dbconnect::getInstance();
    }

    public function affichageAll() : array {
        $req = "SELECT * FROM immochateau.departements";
        $pdoStatement = $this->connexion->prepare($req);
        $pdoStatement->execute();
        $list = $pdoStatement->fetchAll();

        return $list;
    }
}