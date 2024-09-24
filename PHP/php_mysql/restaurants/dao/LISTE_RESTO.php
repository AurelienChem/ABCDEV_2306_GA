<?php
    require_once ('dbconnect.php');
class Liste_resto {

    private PDO $connexion;
    private string $table;
    private array $tabColumn;
    private array $tabId;

    public function __construct(PDO $_connexion,string $_table, array $_tabColumn = [], array $_tabId = [])
    {
        $this->connexion = $_connexion;
        $this->table = $_table;
        $this->tabColumn = $_tabColumn;
        $this->tabId = $_tabId;
    }

    public function affichageAll() {
        $sqlQuery = 'SELECT id, nom, adresse, prix, commentaire, note, visite FROM '. $this->table;
        $listeStatement = $this->connexion->prepare($sqlQuery);
        $listeStatement->execute();
        $liste = $listeStatement->fetchAll();

        return $liste;
    }

    public function chercherResto() : array {
        $sqlQuery2 = 'SELECT id, nom, adresse, prix, commentaire, note, visite FROM '. $this->table;
        $state = $this->connexion->query($sqlQuery2);
        $tabName = $state->getColumnMeta(0);
        $nomColumn = $tabName["name"];
        array_push($this->tabId,$nomColumn);

        return $this->tabId;
    }


    public function info_table() : array {

        $sqlQuery3 = 'SELECT * FROM '.$this->table;
        $state = $this->connexion->query($sqlQuery3);
        $nbColumn = $state->columnCount();

        for ($i=0; $i < $nbColumn; $i++) { 
            $tabMeta = $state->getColumnMeta($i);
            $nomColumn = $tabMeta["name"];
            array_push($this->tabColumn,$nomColumn);
        }

        return $this->tabColumn;
    }
}