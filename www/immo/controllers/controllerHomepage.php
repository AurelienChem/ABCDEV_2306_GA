<?php

class ControllerHomepage {
    public function __construct()
    {
        ;
    }

    public function afficherHomepage() {
        $objDept = new Departement();
        $data = $objDept->affichageAll();
        $objPiece = new Bienimmo();
        $data2 = $objPiece->affichagePiece();
        require("./views/homepage.php");
    }
}