<?php

abstract class Controller
{

    private static $layout = 'default_layout.phtml';

    public static function setAdminLayout()
    {
        self::$layout = 'admin_layout.phtml';
    }

    protected function render($viewName, array $args = array())
    {
        extract($args);
        $tplDir = str_replace('Controller', '', get_class($this)); // Index
        $file = VIEW_DIR . $tplDir . DS . $viewName . '.phtml';

        if (!file_exists($file)) {
            throw new Exception("{$file} not found", 404);
        }

        ob_start();
        require $file;
        $content = ob_get_clean();

        ob_start();
        require VIEW_DIR . self::$layout;
        return ob_get_clean();
    }

    public static function renderError($code, $message)
    {
        ob_start();
        require VIEW_DIR . 'error.phtml';
        $content = ob_get_clean();

        ob_start();
        require VIEW_DIR . self::$layout;
        return ob_get_clean();
    }
}