<?php

namespace app\controllers;

use app\engine\{App, Request, Session};
use app\model\entities\{Baskets, Orders};
use function Couchbase\defaultDecoder;

class ApiController extends Controller
{
    public static function actionAddToBasket() {
        $sessionId = App::call()->session->getSession('id');
        $product = App::call()->request->getParams()['id'];
        if (isset($sessionId)) {
            $id = $sessionId;
        } else {
            $id = App::call()->session->getSessionId();
        }

        $basket = new Baskets($id, $product);
        App::call()->basketsRepository->insert($basket);

        $response = [
            'product_quantity' => count(App::call()->basketsRepository->getAllById(['product_id' => $product, 'user_id' => $basket->user_id, 'is_ordered' => 0])),
            'all_count' => App::call()->basketsRepository->getCountWhere(['user_id' => $id, 'is_ordered' => 0])
        ];
        echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
        die();
    }

    public static function actionDeleteFromBasket() {
        $sessionId = App::call()->session->getSession('id');
        $product = App::call()->request->getParams()['id'];
        if (isset($sessionId)) {
            $id = $sessionId;
        } else {
            $id = App::call()->session->getSessionId();
        }

        if (isset($sessionId)) {
            $basket = App::call()->basketsRepository->getOneObject(['user_id' => App::call()->session->getSession('id')]);
        } else {
            $basket = App::call()->basketsRepository->getOneObject(['user_id' => App::call()->session->getSessionId()]);
        }

        App::call()->basketsRepository->deleteWhere(['product_id' => $product, 'user_id' => $basket->user_id, 'is_ordered' => 0]);
        $response = [
            'product_quantity' => count(App::call()->basketsRepository->getAllById(['product_id' => $product, 'user_id' => $basket->user_id, 'is_ordered' => 0])),
            'all_count' => App::call()->basketsRepository->getCountWhere(['user_id' => $id, 'is_ordered' => 0])
        ];
        echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
        die();
    }

    public static function actionNewOrder() {
        $sessionId = App::call()->session->getSession('id');
        $tel = App::call()->request->getParams()['tel'];
        $basketRep = App::call()->basketsRepository;

        if (isset($sessionId)) {
            $id = $sessionId;
        } else {
            $id = App::call()->session->getSessionId();
        }

        if (isset($sessionId)) {
            $basket = $basketRep->getCart($sessionId);
        } else {
            $basket = $basketRep->getCart(App::call()->session->getSessionId());
        }
        $products = $basketRep->getAllById(['user_id' => $id]);

        if (!$tel) {
            die();
        }
        foreach ($products as $key) {
            $basketObj = $basketRep->getOneObject(['id' => $key['id'], 'is_ordered' => 0]);
            if ($basketObj) {
                $basketObj->is_ordered = 1;
                $basketRep->update($basketObj);
            }
        }
        $basket = json_encode($basket);
        $order = new Orders($basket, $tel, $id);
        App::call()->ordersRepository->insert($order);
        $response = [
            'success' => true,
            'all_count' => App::call()->basketsRepository->getCountWhere(['user_id' => $id, 'is_ordered' => 0])
        ];
        echo json_encode($response, JSON_UNESCAPED_UNICODE, JSON_PRETTY_PRINT);
    }

    public static function actionChangeStatus() {
        $order_id = App::call()->request->getParams()['id'];
        $status = App::call()->request->getParams()['status'];
        var_dump($order_id, $status);
        $order = App::call()->ordersRepository->getOneObject(['id'=> $order_id]);
        $order->status = $status;
        App::call()->ordersRepository->update($order);
    }
}