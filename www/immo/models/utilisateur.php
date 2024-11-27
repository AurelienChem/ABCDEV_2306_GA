<?php

class Utilisateurs
{
    private PDO $connexion;

    public function __construct()
    {
        $this->connexion = Dbconnect::getInstance();
    }
    
    public function afficherAuthentification()   {
        require("./views/acces_membre.php");
    }

    public function authenticate($mail_utilisateur, $pass_utilisateur) : array
    {
        $pdoStatement = $this->connexion->prepare("SELECT * FROM utilisateurs WHERE mail_utilisateur = :mail_utilisateur");
        $pdoStatement->bindParam(':mail_utilisateur', $mail_utilisateur, PDO::PARAM_STR); // Exemple de hachage de mot de passe
        $pdoStatement->execute();
        
        $nbLignes = $pdoStatement->rowCount();

        if($nbLignes === 1) {
            $row = $pdoStatement->fetch(PDO::FETCH_ASSOC);
            if(password_verify($pass_utilisateur, $row["pass_utilisateur"]) === true) {
                return $row;
            }
            return [];
        }
        return [];
    }

    public function affichageAnnonce(int $id_user): array
    {

        $req = "SELECT utilisateurs.nom_utilisateur,biens_immobiliers.* FROM biens_immobiliers inner join utilisateurs  on utilisateurs.id_utilisateur= biens_immobiliers.id_utilisateur_commercial   WHERE id_utilisateur_commercial = :id_utilisateur";
        $data = [];
        $pdostatement = $this->connexion->prepare($req);
        $pdostatement->bindParam(":id_utilisateur", $id_user, PDO::PARAM_INT);
        $pdostatement->execute();
        
        while(($row = $pdostatement->fetch(PDO::FETCH_ASSOC)) !== false) {
            array_push($data, $row);
        }

        return $data;
    }
}
