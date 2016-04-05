<?php

class AdminBookController extends Controller
{
    /**
     * @param Request $request
     * @return string
     */
    public function indexAction(Request $request)
    {
        $model = new BookModel();
        $books = $model->findAll(false);

        $args = compact('books');

        return $this->render('index', $args);
    }


    /**
     * @param Request $request
     * @return string
     * @throws Exception
     * @throws NotFoundException
     */
    public function editAction(Request $request)
    {
        $model = new BookModel();
        $form = new BookForm($request);
        $styles = (new StyleModel())->getCategories();


        $id = $request->get('id');
        $book = $model->findById($id);
        Debugger::debug($book);



        if ($request->isPost()) {
            if ($form->isValid()) {


                $model->save(array(
                    'id' => $id,
                    'title' => $form->title,
                    'description' => $form->description,
                    'price' => $form->price,
                    'status' => $form->status,
                    'style_id' => $form->style
               ));
                Session::setFlash('Saved');
                Router::redirect('/admin/books/edit/' . $id);
            }

            Session::setFlash('Invalid data');

        } else {
            $form->setFromArray($book);
        }

        $args = compact('book', 'form' , 'styles');
        return $this->render('edit', $args);
    }

    public function addAction(Request $request)
    {
        $model = new BookModel();
        $form = new BookForm($request);
        $styles = (new StyleModel())->getCategories();
        $books = $model->findAll(false);


        if ($request->isPost()) {
            if ($form->isValid()) {


                $model->add(array(
                    'id' => count($books) + 1,
                    'title' => $form->title,
                    'description' => $form->description,
                    'price' => $form->price,
                    'status' => $form->status,
                    'style_id' => $form->style
                ));
                Router::redirect('/admin/books/add');
            }

            Session::setFlash('Invalid data');

        } else {
        }

        $args = compact('books', 'form' , 'styles');
        return $this->render('add', $args);
    }

    public function removeAction(Request $request)
    {
        $id = $request->get('id');
        $model = new BookModel();
        $book = $model->findById($id);

        $model->remove($book);

        Session::setFlash("Book-#{$id} removed");
        Router::redirect('/admin/books');

        $args = compact('book');
        return $this->render('index', $args);
    }

    public function activateAction(Request $request)
    {
        $model = new BookModel();
        $id = $request->get('id');
        $book = $model->findById($id);

        Debugger::debug($book);

        $model->activate($book);

        Session::setFlash('Status changed to \'Active\'');
        Router::redirect('/admin/books');

        $args = compact('book');
        return $this->render('index', $args);
    }

    public function deactivateAction(Request $request)
    {
        $model = new BookModel();
        $id = $request->get('id');
        $book = $model->findById($id);

        $model->deactivate($book);

        Session::setFlash('Status changed to \'Not active\'');
        Router::redirect('/admin/books');

        $args = compact('book');
        return $this->render('index', $args);
    }


}






















