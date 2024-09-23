<?php

class Dbconnect
{
    private string $db_host;
    private string $db_username;
    private string $db_password;

    public function __construct($db_host, $db_username, $db_password)
    {
        $this->db_host = $db_host;
        $this->db_username = $db_username;
        $this->db_password = $db_password;
    }

    public function tryConnect()
    {
        try {
            $myConnection = new PDO("mysql:host=" . $this->db_host . ";port=3306;dbname=guide_resto;charset=utf8", $this->db_username, $this->db_password);
            $myConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            printf("Echec de la connexion : %s\n", $e->getMessage());
            exit();
        }

        return $myConnection;
    }
}
