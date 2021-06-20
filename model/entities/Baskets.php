<?php

namespace app\model\entities;

use app\engine\Db;
use app\model\Model;

class Baskets extends Model
{
    protected $basket_id;
    protected $user_id;
    protected $product_id;
    protected $is_ordered;
    protected $products;


    protected $props = [
        'basket_id' => false,
        'user_id' => true,
        'product_id' => true,
        'is_ordered' => true,
        'products' => false,
    ];

    public function __construct($user_id = null, $product_id = null, $is_ordered = 0)
    {
        $this->user_id = $user_id;
        $this->product_id = $product_id;
        $this->is_ordered = $is_ordered;
    }


}