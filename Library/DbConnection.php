<?php

/**
 * Singleton Pattern
 */
class DbConnection
{
    private static $instance = null;

    /**
     * @var PDO
     */
    private $pdo;

    private function __construct()
    {
        $dsn = 'mysql: host=' . Config::get('host') . '; dbname='. Config::get('dbname'); // like:  mysql: host=localhost; dbnam=mvc1102

        $this->pdo = new PDO($dsn, Config::get('user'), Config::get('pass'));
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->pdo->exec('SET NAMES utf8');
    }

    private function __clone() {}
    private function __wakeup() {}

    public static function getInstance()
    {
        if (is_null(self::$instance)) {
            self::$instance = new DbConnection();
        }

        return self::$instance;
    }


    /**
     * @return PDO
     */
    public function getPdo()
    {
        return $this->pdo;
    }
}

