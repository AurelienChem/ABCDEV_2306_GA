<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <p>
        <?php 
        function hello(string $name) : string
        {
            if($name === "") {
                $name = "Nobody";
            }

            return "Hello $name";
            // ternaire -> return $name === "" ? "Nobody" : $name;
        }
        
        echo hello("World");
        echo "<br>";
        echo hello("");
        ?>
    </p>
</body>
</html>