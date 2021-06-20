<?php


namespace app\engine;


use app\interfaces\IRenderer;

class TwigRender implements IRenderer
{
    private $twig;

    public function __construct($twig)
    {
        $this->twig = $twig;
    }

    public function renderTemplate($template, $params = [])
    {
        $templatePath = App::call()->config['twigs_dir'] . $template . ".twig";

        if (file_exists($templatePath)) {
            $templatePath = $template . ".twig";
            echo $this->twig->render($templatePath, $params);
        }
    }
}