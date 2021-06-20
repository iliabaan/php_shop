<?php


namespace app\controllers;


use app\engine\App;
use app\engine\Session;
use app\model\repositories\BasketsRepository;

class BasketsController extends Controller
{

    public function actionIndex() {
        $sessionId = App::call()->session->getSession('id');
        $basketRep = App::call()->basketsRepository;
        if (isset($sessionId)) {
            $basket = $basketRep->getCart($sessionId);
        } else {
            $basket = $basketRep->getCart(App::call()->session->getSessionId());
        }
        echo $this->render('basket',[
            'cart' => $basket,
        ]);
    }
}