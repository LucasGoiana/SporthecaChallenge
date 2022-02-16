<?php


namespace Helpers;
use \PDO;

class Connection
{
    public function make()
    {
        try {
            $conn = new PDO("mysql:host=".HOST.";dbname=".DATABASE, USER, PASSWORD);
            $conn->setAttribute(PDO::ERRMODE_EXCEPTION, PDO::FETCH_ASSOC);
            return $conn;
        } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }
}