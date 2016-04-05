<?php

return  array(
    // some default routes
    'default' => new Route('/', 'Index', 'index'),
    'index_php' => new Route('/index.php', 'Index', 'index'),

    // site
    'admin-page' => new Route('/admin', 'Security', 'admin'),
    'user-page' => new Route('/user', 'Security', 'user'),
    'books_list' => new Route('/books', 'Book', 'index'),
    'book_page' => new Route('/book-{id}\.html', 'Book', 'show', array('id' => '[0-9]+') ),
    'news-list' => new Route('/news', 'News', 'index'),
    'news-page' => new Route('/news-{id}.html', 'News', 'show', array('id' => '[0-9]+') ),
    'author-page' => new Route('/author-{author}.html', 'Author', 'book', array('author' => '[a-zA-Z]+') ),
    'contact_us' => new Route('/contact-us', 'Index', 'contact'),
    'cart_add' => new Route('/add/{id}', 'Cart', 'add', array('id' => '[0-9]+') ),
    'cart_list' => new Route('/cart', 'Cart', 'index'),
    'login' => new Route('/login', 'Security', 'login'),
    'logout' => new Route('/logout', 'Security', 'logout'),
    'register' => new Route('/register', 'Security', 'register'),
    'api_books_list' => new Route('/api/books', 'Book', 'apiBooksList'),

    // admin
    'admin_book_activate' => new Route('/admin/books/activate/{id}', 'AdminBook', 'activate', array('id' => '[0-9]+')),
    'admin_book_deactivate' => new Route('/admin/books/deactivate/{id}', 'AdminBook', 'deactivate', array('id' => '[0-9]+')),
    'admin_books_list' => new Route('/admin/books', 'AdminBook', 'index'),
    'admin_books_edit' => new Route('/admin/books/edit/{id}', 'AdminBook', 'edit', array('id' => '[0-9]+')),
    'admin_books_add' => new Route('/admin/books/add', 'AdminBook', 'add'),
    'admin_book_remove' => new Route('/admin/books/remove/{id}', 'AdminBook', 'remove', array('id' => '[0-9]+')),
    'admin_document_add' => new Route('/admin/docs/add', 'AdminDocument', 'add', array('id' => '[0-9]+')),

   // 'devionity_style' => new Route('/{_controller}/{_action}/{id}')
);
