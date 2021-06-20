<?php

require_once '../vendor/autoload.php';
use app\engine\App;

$loader = new Twig\Loader\FilesystemLoader('../twigtemplates');
$twig = new Twig\Environment($loader,[
    'debug' => true
]);

use app\engine\{TwigRender, Request};

//try {
//    $request = new Request();
//
//    $controllerName = $request->getControllerName() ?: 'products';
//    $actionName = $request->getActionName();
//
//    $controllerClass = CONTROLLERS_NAMESPACE . ucfirst($controllerName) . "Controller";
//
//    if (class_exists($controllerClass)) {
//        $controller = new $controllerClass(new TwigRender($twig));
//        $controller->runAction($actionName);
//    }
//} catch (\PDOException $e) {
//    var_dump($e);
//} catch (\Exception $e) {
//    var_dump($e->getMessage());
//}

$config = include "../config/config.php";

try {
    App::call()->run($config);

} catch (\PDOException $e) {
    var_dump($e);
} catch (\Exception $e) {
    var_dump($e->getTrace());
}


die();
