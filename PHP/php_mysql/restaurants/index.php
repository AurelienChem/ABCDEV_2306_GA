<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Le Restaurant</title>
</head>
<body>
    <?php
        try {
            $myConnection = new PDO("mysql:host=localhost;port=3306;dbname=guide_resto;charset=utf8", "root", '');
            $pdoStatement = $myConnection->query("SELECT * FROM restaurants", PDO::FETCH_ASSOC);
            $monTab = $pdoStatement->fetchAll();

            echo "<pre>";
            var_export($monTab);
            echo "</pre>";

        } catch (PDOException $e) {
            printf("Echec de la connexion : %s\n", $e->getMessage());
            exit();
        }
    ?>
</body>
</html>