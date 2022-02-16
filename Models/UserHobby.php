<?php

namespace Models;

use Helpers\Connection;
use \PDO;
class UserHobby
{
    /**
     * @var $connection
     */
    private $connection;

    /**
     * UserHobby constructor.
     * @param PDO $connection
     */
    public function __construct(PDO $connection)
    {
        $this->connection = $connection;
    }


    public function getUsers()
    {
        return $this->connection->query("
                SELECT 
                    id, name, country, TIMESTAMPDIFF(YEAR, birthDate,NOW()) age, created_at 
                FROM Users
	    ")->fetchAll();

    }

    public function getHobbyByUser($idUsers)
    {

       return $this->connection->query("
                    SELECT 
                        h.hobbie 
                    FROM Hobbies h 
                        INNER JOIN Hobbies_X_Users hu ON h.id =  hu.idHobby
                        WHERE hu.idUser =".$idUsers)->fetchAll(PDO::FETCH_COLUMN);

    }


}