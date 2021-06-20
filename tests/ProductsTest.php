<?php

use \app\model\Products;
use \PHPUnit\Framework\TestCase;

class ProductsTest extends TestCase
{
    /**
     * @dataProvider providerProductData
     */
//    public function testCreateNewProduct() {
//        $product = new Products($a, $b, $c);
//        $this->assertEquals($a, $product->title);
//
//    }

//    public function testDeleteProduct() {
//        $product = new Products($a, $b, $c);
//        $product->delete();
//        $this->assertNull($product->title);
//    }

    public function testChangePropsProduct() {
        $product = new Products($a, $b, $c);
        $title = 'Молоко';
        $product->title = $title;
        $this->assertEquals($title, $product->title);
    }

    public function providerProductData()
    {
        return array (
            array ('Чай', 'Зеленый', 20),
            array ('Кофе', 'Черный', 10),
        );
    }

}