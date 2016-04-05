<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/20/2016
 * Time: 11:52 PM
 */
class NewsController extends Controller
{
    public function indexAction(Request $request)
    {
        $model = new NewsModel();
        $news = $model->getNews();

        $args = compact('news');

        return $this->render('index', $args);
    }

    public function showAction(Request $request)
    {
        $id = $request->get('id');
        var_dump($id);
        $model = new NewsModel();
        $news = $model->getById($id);

        $args = compact('news');

        return $this->render('show', $args);
    }
}