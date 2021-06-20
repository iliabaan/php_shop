<?php

namespace app\model\entities;

use app\model\Model;

class Users extends Model
{
    protected $id;
    protected $login;
    protected $password;
    protected $hash_id;

    protected $props = [
        'id' => false,
        'login' => true,
        'password' => true,
        'hash_id' => true
    ];

    public function __construct($login = null, $password = null, $hash_id = null)
    {
        $this->login = $login;
        $this->password = $password;
        $this->hash_id = $hash_id;
    }


}