<?php


namespace app\model\repositories;



use app\engine\App;
use app\model\entities\Orders;
use app\model\Repository;

class OrdersRepository extends Repository
{

    protected function getTableName()
    {
        return 'orders';
    }

    protected function getEntityClass()
    {
        return Orders::class;
    }

    public function getOrders($user_id) {
        return App::call()->ordersRepository->getAllById(['user' => $user_id]);
    }
}