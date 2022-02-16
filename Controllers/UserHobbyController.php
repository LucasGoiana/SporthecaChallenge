<?php

namespace Controllers;

use Helpers\Connection;
use Models\UserHobby;

class UserHobbyController
{
    /**
     * @var \PDO $connection
     */
    private $connection;

    /**
     * @var $userHobby
     */
    private $userHobby;


    /**
     * UserHobbyController constructor.
     */
    public function __construct()
    {

        $this->connection =  new Connection();
        $this->connection = $this->connection->make();

        $this->userHobby = new UserHobby($this->connection);

    }

    /**
     * Function responsável por controlar a requisição no bd
     * e transformar em json
     */
    public function make()
    {

        $userHobbyResponses = $this->userHobby->getUsers();

        foreach($userHobbyResponses as $k => $v )
        {
            $jsonArray[] = array(
                'id'=>  $v['id'],
                'name'=>  $v['name'],
                'country'=>  $v['country'],
                'age'=>  $v['age'],
                'created_at' => date("d/m/Y", strtotime($v['created_at'])),
                'hobbies' => $this->userHobby->getHobbyByUser($v['id']) ?? null
            );
        }

        echo json_encode($jsonArray);
    }
}