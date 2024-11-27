<?php

class Dbconnect
{
    private static ?PDO $connexion = null;

    private function __construct()
    {
        
    }

    private static function getConfig(): array
    {
        $config = (require ('./dao/config.php'));
        return $config;
    }

    public static function getInstance() : PDO {
        if(is_null(self::$connexion)) {
            $config = self::getConfig();
            self::$connexion = new PDO($config['dsn'], $config['user'], $config['pass'], [PDO::ATTR_DEFAULT_FETCH_MODE =>PDO::FETCH_ASSOC]);
        }
        return self::$connexion;
    }

    /* public function tryConnect():?PDO
    {
        try {
            $myConnection = new PDO("mysql:host=" . $this->db_host . ";port=3306;dbname=" . $this->db_basename . ";charset=utf8", $this->db_username, $this->db_password, [PDO::ATTR_DEFAULT_FETCH_MODE =>PDO::FETCH_ASSOC]);
            $myConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $myConnection;
        } catch (PDOException $e) {
            echo "Echec de la connexion :".$e->getMessage();
            return null;
        }
    } */

    /* public function setDb_basename(string $basename) {
        $this->db_basename = $basename;
    } */
}
