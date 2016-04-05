<?php

/**
 * Created by PhpStorm.
 * User: PHP acedemy
 * Date: 01.03.2016
 * Time: 20:52
 */
abstract class Router
{
    private static $map;
    public static $controller = null;
    public static $action = null;

    /**
     * @param $routesFile
     */
    public static function init($routesFile)
    {
        self::$map = require(CONF_DIR . $routesFile);
    }

    private static function isAdminUri($uri)
    {
        return strpos($uri, '/admin') ===  0;
    }


    /**
     * @param Request $request
     * @throws Exception
     */
    public static function match(Request $request)
    {
        $uri = $request->getURI();

        if (self::isAdminUri($uri)) {
            Controller::setAdminLayout();
        }

        // перебор элементов массива из routes.php
        foreach (self::$map as $route) {

            $regex = $route->pattern;

            foreach ($route->params as $k => $v) {
                $regex = str_replace('{' . $k . '}', '(' . $v . ')', $regex);
               // echo "$regex <br>";
            }

            // если нашли совпадение по регулярному выражению
            if (preg_match('@^' . $regex . '$@', $uri, $matches)) {

                array_shift($matches);
                if ($matches) {
                    $matches = array_combine(array_keys($route->params), $matches);
                    $request->mergeGet($matches);
                }

                self::$controller = $route->controller . 'Controller';
                self::$action = $route->action . 'Action';

                break;
            }
        }

        if (is_null(self::$controller) || is_null(self::$action)) {
            throw new Exception('Route not found: ' . $uri, 404);
        }
    }

    /**
     * Redirect
     *
     * TODO: параметром передавать не uri, а название роута + параметры
     * @param $uri
     */
    public static function redirect($uri)
    {
        header("Location: {$uri}");
        die;
    }

    public function getUri($routeName, array $params = array())
    {
        // TODO
    }
}