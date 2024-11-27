

<?php

require("./controllers/controllerGestion.php");

require("./models/utilisateur.php");

require("./models/dbconnect.php");

require("./controllers/controllerHomepage.php");

require("./models/dept.php");

require("./models/bienimmo.php");



/* HEADER entete avec dépendances CSS 
  ================================================== */
include("./views/header.php");


/*NAVBAR
    ================================================== */
include("./views/menu.php");

/* Carousel
    ================================================== */

include("./views/slider.php");

if (isset($_GET["module"])) {
    switch ($_GET["module"]) {
        case 'gestion':
            $obj = new ControllerGestion();
            $obj->afficherLogin();
            break;
        case 'home':
            $objHome = new ControllerHomepage();
            $objHome->afficherHomepage();
            break;
        case '':
            $objHome = new ControllerHomepage();
            $objHome->afficherHomepage();
            break;
        default:
            $objHome = new ControllerHomepage();
            $objHome->afficherHomepage();
            break;
    }
} else {
    $objHome = new ControllerHomepage();
    $objHome->afficherHomepage();
}


/* Pied de page avec dépendances Javascript...
    ================================================== */
include("./views/footer.php");

?>
          
   


