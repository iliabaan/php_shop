<?php


namespace app\controllers;

use app\model\repositories\BasketsRepository;
use app\model\repositories\UsersRepository;
use app\engine\{Render, TwigRender};
use app\interfaces\IRenderer;


class Controller
{
    private $action;
    private $defaultAction = 'index';
    private $defaultLayout = 'main';
    private $useLayout = true;
    private $renderer;

    public function __construct(IRenderer $renderer)
    {
        $this->renderer = $renderer;
    }


    public function runAction($action = null) {
        $this->action = $action ?: $this->defaultAction;
        $method = "action" . ucfirst($this->action);
        if (method_exists($this, $method)) {
            $this->$method();
        }
    }

    public function render($template, $params = []) {
        if ($this->useLayout) {
            return $this->renderTemplate("layouts/{$this->defaultLayout}", [
                'menu' => $this->renderTemplate('menu', [
                    'auth' => (new UsersRepository())->isAuth(),
                    'username' => (new UsersRepository())->getName(),
                    'count' => (new BasketsRepository())->getCountWhere(['user_id' => (new UsersRepository())->getId(), 'is_ordered' => 0])
                ]),
                'content' => $this->renderTemplate($template, $params)
            ]);
        } else {
            return $this->renderTemplate($template, $params);
        }
    }

    public function renderTemplate($template, $params = []) {

        return $this->renderer->renderTemplate($template, $params);
    }


}