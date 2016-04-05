<?php
/**
 * Created by PhpStorm.
 * User: henry
 * Date: 03.01.16
 * Time: 21:49
 */



class Route
{
    public $pattern;
    public $controller;
    public $action;
    public $params;

    /**
     * Route constructor.
     * @param $pattern
     * @param $controller
     * @param $action
     * @param $params
     */
    public function __construct($pattern, $controller, $action, array $params = array())
    {
        $this->pattern = $pattern;
        $this->controller = $controller;
        $this->action = $action;
        $this->params = $params;
    }


}