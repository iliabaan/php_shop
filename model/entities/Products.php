<?php

namespace app\model;

class Products extends Model
{
    protected $id;
    protected $title;
    protected $description;
    protected $price;
    protected $img;



    protected $props = [
        'title' => false,
        'description' => false,
        'price' => false,
        'img' => false
    ];


    public function __construct($title = null, $description = null, $price = null, $img = null)
    {
        $this->title = $title;
        $this->description = $description;
        $this->price = $price;
        $this->img = $img;
    }

}
