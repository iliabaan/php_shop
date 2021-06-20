<?php

namespace app\model\entities;

use app\model\Model;

class Orders extends Model
{
    protected $id;
    protected $order_list;
    protected $phone_number;
    protected $user;
    protected $status;

    protected $props = [
        'order_list' => true,
        'phone_number' => true,
        'status' => true,
        'user' => true,
    ];

    public function __construct($order_list = null, $phone_number = null, $user = null)
    {
        $this->user = $user;
        $this->order_list = $order_list;
        $this->phone_number = $phone_number;
        $this->status = 'get';
    }

}