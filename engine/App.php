<?php


namespace app\engine;


use app\model\repositories\{BasketsRepository,
    OrdersRepository,
    ReviewsRepository,
    UsersRepository,
    ProductsRepository};
use app\traits\TSingletone;
use Twig;

/**
 * Class App
 * @property Request $request
 * @property BasketsRepository $basketsRepository
 * @property UsersRepository $usersRepository
 * @property ProductsRepository $productsRepository
 * @property ReviewsRepository $reviewsRepository
 * @property OrdersRepository $ordersRepository
 * @property Session $session
 * @property Db $db
 */

class App
{
    use TSingletone;

    public $config;
    private $components;

    private $controller;
    private $action;
    private $loader;
    private $twig;

    public function run($config) {
        $this->config = $config;
        $this->loader = new Twig\Loader\FilesystemLoader('../twigtemplates');
        $this->twig = new Twig\Environment($this->loader,['debug' => true]);
        $this->components = new Storage();
        $this->session->sessionStart();
        $this->runController();
    }

    private function runController()
    {
        $this->controller = $this->request->getControllerName() ?: 'products';
        $this->action = $this->request->getActionName();

        $controllerClass = $this->config['controllers_namespaces'] . ucfirst($this->controller) . "Controller";

        if (class_exists($controllerClass)) {
            $controller = new $controllerClass(new TwigRender($this->twig));
            $controller->runAction($this->action);
        } else {
            echo "Неправильный контроллер!";
        }
    }

    /**
     * @return static
     */
    public static function call()
    {
        return static::getInstance();
    }

    public function createComponent($name)
    {
        if (isset($this->config['components'][$name])) {
            $params = $this->config['components'][$name];
            $class = $params['class'];
            if (class_exists($class)) {
                unset($params['class']);
                $reflection = new \ReflectionClass($class);
                return $reflection->newInstanceArgs($params);

            }
        }
        return null;
    }

    public function __get($name)
    {
        return $this->components->get($name);
    }
}