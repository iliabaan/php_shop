<?php


namespace app\model;


class Reviews extends Model
{
    protected $id;
    protected $name;
    protected $review;
    protected $product_id;

    protected $props = [
        'id' => false,
        'name' => false,
        'review' => false,
        'product_id' => false
    ];

    public function __construct($name = null, $review = null, $product_id = null)
    {
        $this->name = $name;
        $this->review = $review;
        $this->product_id = $product_id;
    }

}