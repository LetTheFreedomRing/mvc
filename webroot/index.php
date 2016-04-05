<?php
define('DS', DIRECTORY_SEPARATOR);
define('ROOT', __DIR__ . DS . '..' . DS);
define('VIEW_DIR', ROOT . 'View' . DS);
define('LIB_DIR', ROOT . 'Library' . DS);
define('CONTROLLER_DIR', ROOT . 'Controller' . DS);
define('MODEL_DIR', ROOT . 'Model' . DS);
//define('DATA_DIR', ROOT . '_data' . DS);
define('CONF_DIR', ROOT . 'Config' . DS);
define('UPLOAD_DIR', ROOT . 'webroot' . DS . 'uploads' . DS);


/**
 * @param $className
 * @throws Exception
 */
function __autoload($className)
{
    $file = "{$className}.php";

    if (file_exists(LIB_DIR . $file)) {
        require LIB_DIR . $file;
    } elseif (file_exists(CONTROLLER_DIR . $file)) {
        require CONTROLLER_DIR . $file;
    } elseif (file_exists(MODEL_DIR . $file)) {
        require MODEL_DIR . $file;
    } else {
        throw new Exception("{$file} not found", 404);
    }
}

try {
    Session::start();
    Config::setFromXML('db.xml');
    Router::init('routes.php');

    $request = new Request();
    Router::match($request);

    $controller = Router::$controller;
    $action = Router::$action;

    $controller = new $controller();

    if (!method_exists($controller, $action)) {
        throw new Exception("{$action} not found", 404);
    }

    $content = $controller->$action($request);
} catch(NotFoundException $e) {
    $content = Controller::renderError($e->getCode(), $e->getMessage());
} catch(Exception $e) {
    $content = Controller::renderError($e->getCode(), $e->getMessage());
}

echo $content;


echo '<hr> <b>Debug</b>: <br>';
Debugger::debug($controller);
Debugger::debug($action);
