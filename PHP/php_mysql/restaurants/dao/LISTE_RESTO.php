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

    public function chercherResto($id) : array {
        $sqlQuery2 = 'SELECT id, nom, adresse, prix, commentaire, note, visite FROM '. $this->table . ' WHERE id = :id';
        $pdoStatement = $this->connexion->prepare($sqlQuery2);
        $pdoStatement->bindParam(':id', $id, PDO::PARAM_INT);
        $pdoStatement->execute();
       
        
        while($row = $pdoStatement->fetch() ) {
            array_push($this->tabId,$row);
        }


        return $this->tabId;
    }


    private function info_table() : array {

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

    public function rendre_HTML() : string {
        $chaineTab = '<table><thead><tr>';
        $tabTitre = $this->info_table();

        for ($i=0; $i < count($tabTitre); $i++) { 
            $chaineTab .= '<th>' . $tabTitre[$i] . '</th>';
        }

        $chaineTab .= '</tr></thead>';
        $chaineTab .= '<tbody>';
        
        $tabContenu = $this->affichageAll();

        for ($i=0; $i < count($tabContenu); $i++) { 
            $chaineTab .= '<tr>';

            foreach($tabContenu[$i] as $key=>$value) {
                $chaineTab .= '<td>' . $value . '</td>';
            }

            $chaineTab .= '</tr>';
        }

        $chaineTab .= '</tbody></table>';

        return $chaineTab;
    }

    
}