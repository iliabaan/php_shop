<?php


namespace app\controllers;

use app\engine\App;
use app\engine\Request;

class AuthController extends Controller
{
    public function actionLogin() {
        $login = App::call()->request->getParams()['login'];
        $password = App::call()->request->getParams()['password'];

        if (App::call()->usersRepository->auth($login, $password)) {
            header("Location:" . $_SERVER['HTTP_REFERER']);
        } else {
            die('Неверный логин или пароль');
        }
    }

    public function actionLogout() {
        setcookie("hash", "", time()-1, "/");
        App::call()->session->destroySession();
        header('Location:' . $_SERVER['HTTP_REFERER']);
    }
}