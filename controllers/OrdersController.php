<?php


namespace app\controllers;


use app\engine\App;
use app\model\repositories\UsersRepository;

class OrdersController extends Controller
{
    public function actionIndex() {
        $ordersType = App::call()->request->getParams()['order_type'];
        $sessionId = App::call()->session->getSession('id');
        $ordersRep = App::call()->ordersRepository;
        if ($ordersType == 'my_orders') {
            if (isset($sessionId)) {
                $orders = $ordersRep->getOrders($sessionId);
            } else {
                $orders = $ordersRep->getOrders(App::call()->session->getSessionId());
            }
        } else {
            $orders = $ordersRep->getAll();
        }

        foreach ($orders as &$key) {
            $key['order_list'] = json_decode($key['order_list'], true);
        }
        echo $this->render('orders',[
            'orders' => $orders,
            'auth' => (new UsersRepository())->isAuth(),
            'is_admin' => ((new UsersRepository())->getName() == 'admin'),
            'selected_orders' => $ordersType,
        ]);
    }
}