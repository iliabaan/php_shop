<?php


namespace app\model\repositories;


use app\model\{Products, Repository};

class ProductsRepository extends Repository
{
    protected function getEntityClass()
    {
        return Products::class;
    }

    public function getTableName()
    {
        return 'products';
    }
}