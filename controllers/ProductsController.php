<?php


namespace app\controllers;


use app\engine\App;
use app\model\Products;
use app\model\Reviews;

class ProductsController extends Controller
{


    public function actionIndex() {
        echo $this->render('index');
    }

    public function actionCatalog() {

        $page = App::call()->request->getParams()['page'] ?? 0;

        //$catalog = Product::getLimit($page); //TODO умножить page на количество товаров на страницу
        $catalog = App::call()->productsRepository->getAll();

        echo $this->render('catalog', [
            'catalog' => $catalog,
            'page' => ++$page
        ]);
    }

    public function actionCard() {
        $id = App::call()->request->getParams()['id'];

        $good = App::call()->productsRepository->getOne($id);
        $reviews = App::call()->reviewsRepository->getAllById(['product_id' => $id]);


        echo $this->render('card', [
            'good' => $good,
            'reviews' => $reviews
        ]);
    }



}