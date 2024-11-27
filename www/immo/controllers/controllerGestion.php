<?php

class ControllerGestion
{
    public function __construct()
    {
        ;
    }

    public function afficherLogin()
    {
        $objUser = new Utilisateurs();
        $objUser->afficherAuthentification();

        if (isset($_POST["validation"])) {
            
            $tab = $objUser->authenticate($_POST["identifiant"], $_POST["pwd"]);

            if (count($tab) > 1) {
                $_SESSION['id_com'] = $tab["id_utilisateur"];
                $_SESSION['name_user'] = $tab["nom_utilisateur"];
                $_SESSION['firstname_user'] = $tab["prenom_utilisateur"];
                $_SESSION['id_level'] = $tab["id_niveau"];

                $data = $objUser->affichageAnnonce($tab["id_utilisateur"]);

                echo "<pre>";
                var_export($data);
                echo "</pre>";
            }
        }
    }
}
