<?php


namespace app\model\repositories;


use app\model\Repository;
use app\model\Reviews;

class ReviewsRepository extends Repository
{
protected function getEntityClass()
    {
        return Reviews::class;
    }

    protected function getTableName()
    {
        return 'reviews';
    }
}