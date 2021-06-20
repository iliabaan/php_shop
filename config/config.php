<?php
//define('ROOT_DIR', dirname(__DIR__));
//define('DS', DIRECTORY_SEPARATOR);
//define('CONTROLLERS_NAMESPACE', "app\\controllers\\");
//define('TEMPLATE_DIR', dirname(__DIR__) . "/views/");
//define('TWIGS_DIR', dirname(__DIR__) . "/twigtemplates/");

use app\engine\Db;
use app\engine\Request;
use app\engine\Session;
use app\model\repositories\BasketsRepository;
use app\model\repositories\OrdersRepository;
use app\model\repositories\ProductsRepository;
use app\model\repositories\ReviewsRepository;
use app\model\repositories\UsersRepository;

return [
    'root_dir' =>  dirname(__DIR__),
    'twigs_dir' => dirname(__DIR__) . "/twigtemplates/",
    'controllers_namespaces' => 'app\\controllers\\',
    'components' => [
        'db' => [
            'class' => Db::class,
            'driver' => 'mysql',
            'host' => 'localhost',
            'login' => 'admin',
            'password' => '1234',
            'database' => 'database',
            'charset' => 'utf8'
        ],
        'request' => [
            'class' => Request::class
        ],
        'basketsRepository' => [
            'class' => BasketsRepository::class
        ],
        'productsRepository' => [
            'class' => ProductsRepository::class
        ],
        'usersRepository' => [
            'class' => UsersRepository::class
        ],
        'ordersRepository' => [
            'class' => OrdersRepository::class
        ],
        'reviewsRepository' => [
            'class' => ReviewsRepository::class
        ],
        'session' => [
            'class' => Session::class
        ]
    ]
];