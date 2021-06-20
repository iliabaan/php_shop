<?php


namespace app\model\repositories;


use app\engine\App;
use app\model\Repository;
use app\model\entities\Baskets;

class BasketsRepository extends Repository
{
    protected function getEntityClass(): string
    {
        return Baskets::class;
    }

    public function getTableName(): string
    {
        return "baskets";
    }

    public function getCart($user_id) {
        $sql = "SELECT title, description, img, price, baskets.is_ordered, products.id, SUM(baskets.quantity) AS quantity FROM products JOIN baskets ON products.id = baskets.product_id AND baskets.user_id = :id AND baskets.is_ordered = 0 GROUP BY baskets.product_id";
        return App::call()->db->queryAll($sql, ['id' => $user_id]);
    }

    public function changeBasketStatus($user_id) {
        $sql = "";
    }
}