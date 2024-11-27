<?php

class Bienimmo {
    private PDO $connexion;

    public function __construct()
    {
        $this->connexion = Dbconnect::getInstance();
    }

    public function affichagePiece() : array {
        $req = "SELECT DISTINCT nbr_pieces FROM immochateau.biens_immobiliers";
        $pdoStatement = $this->connexion->prepare($req);
        $pdoStatement->execute();
        $listPieces = $pdoStatement->fetchAll();

        return $listPieces;
    }
}