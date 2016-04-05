<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/20/2016
 * Time: 10:27 PM
 */
class AuthorController extends Controller
{
    public function bookAction(Request $request)
    {
        $author = $request->get('author');
        $model = new AuthorModel();
        $books = $model->getBooks();

        MetaHelper::addTitle($author);

        for ($i = 0; $i < count($books); $i++) {
            if($books[$i]['name'] == $author) {
                $books = $books[$i];
                break;
            }
        }
        $books = explode(',', $books['books']);

        $args = compact('author', 'books');

        return $this->render('index', $args);
    }
}