<!DOCTYPE html>
<html lang="FR-fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Modification d'une ligne</title>
</head>

<body>

    <?php
    require_once('./dao/dbconnect.php');
    require_once('./dao/LISTE_RESTO.php');

    $objConnection = new Dbconnect('localhost', 'guide', 'root', '');
    $myConnect = $objConnection->tryConnect();

    $objConnectionAll = new Liste_resto($myConnect, 'restaurants');
        if (isset($_GET["id"]) && !empty($_GET["id"])) {
            $row= $objConnectionAll->chercherResto($_GET["id"]);
           // var_export($row);
        }
     


    

    if (isset($_POST["submit"])) {

        $_nom = $_POST["nom"];
        $_adresse = $_POST["adresse"];
        $_prix = $_POST["prix"];
        $_commentaire = $_POST["commentaire"];
        $_note = $_POST["note"];
        $_visite = $_POST["visite"];

        $test = $objConnectionAll->modifierLigne($_nom, $_adresse, $_prix, $_commentaire, $_note, $_visite, $_GET["id"]);

        if($test === true) {
            echo "Données bien mise à jour";
        }
    }



    ?>
    <form action="" method="post" class="form-example">
        <div class="form-example">
            <label for="nom">Nom</label>
            <input type="text" name="nom" id="nom" required  value="<?=$nom=$row[0]["nom"]??""; ?>"/>
        </div>
        <div class="form-example">
            <label for="adresse">Adresse</label>
            <input type="text" name="adresse" id="adresse" required value="<?=$adresse=$row[0]["adresse"]??""; ?>" />
        </div>
        <div class="form-example">
            <label for="prix">Prix</label>
            <input type="number" name="prix" id="prix" required value="<?=$adresse=$row[0]["prix"]??""; ?>"/>
        </div>
        <div class="form-example">
            <label for="commentaire">Commentaire</label>
            <input type="textarea" name="commentaire" id="commentaire" required value="<?=$adresse=$row[0]["commentaire"]??""; ?>"/>
        </div>
        <div class="form-example">
            <label for="note">Note</label>
            <input type="number" name="note" id="note" required value="<?=$adresse=$row[0]["note"]??""; ?>"/>
        </div>
        <div class="form-example">
            <label for="date">Visite</label>
            <input type="date" name="visite" id="visite" required value="<?=$adresse=$row[0]["visite"]??""; ?>"/>
        </div>
        <div class="form-example">
            <input type="submit" name= "submit" value="Valider" />
        </div>
    </form>
</body>

</html>