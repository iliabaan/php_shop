<?php


namespace app\model\repositories;


use app\engine\App;
use app\engine\Session;
use app\model\Repository;
use app\model\entities\Users;

class UsersRepository extends Repository
{
    public static function auth($login, $password) {
        $user = App::call()->usersRepository->getOneObject(['login' => $login]);
        if (password_verify($password, $user->password)) {
            $user->hash_id = uniqid(rand(), true);
            App::call()->usersRepository->save($user);
            setcookie("hash", $user->hash_id, time() + 3600, "/");
            App::call()->session->setSession('login', $login);
            App::call()->session->setSession('id', $user->id);
            return true;
        } else {
            return false;
        }

    }

    public static function isAuth() {
        $hash = $_COOKIE['hash'];
        if (isset($hash)) {
            $user = App::call()->usersRepository->getOneObject(['hash_id' => $hash]);
            App::call()->session->setSession('login', $user->login);
            App::call()->session->setSession('id', $user->id);
        }
        $sessionId = App::call()->session->getSession('id');
        return isset($sessionId);
    }

    public static function getName() {
        return App::call()->session->getSession('login');
    }

    public static function getId () {
        $sessionId = App::call()->session->getSession('id');
        if (isset($sessionId)) {
            return $sessionId;
        } else {
            return App::call()->session->getSessionId();
        }
    }

    protected function getEntityClass()
    {
        return Users::class;
    }

    public function getTableName() {
        return 'users';
    }
}