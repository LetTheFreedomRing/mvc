<?php

/**
 * Created by PhpStorm.
 * User: henry
 * Date: 23.03.16
 * Time: 15:57
 */
class CartController extends Controller
{
    public function addAction(Request $request)
    {
        $id = $request->get('id');
        $cart = new Cart();
        $cart->addProduct($id);

        // TODO: set flash

        Router::redirect("/book-{$id}.html");
    }

    public function indexAction(Request $request)
    {
        $cart = new Cart();

        $booksIds = $cart->getProducts();

        $model = new BookModel();
        $books = $model->findByIdArray($booksIds);

        return $this->render('index', compact('books'));
    }

}