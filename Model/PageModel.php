<?php

class PageModel
{
    public function findByAlias($alias)
    {

        // DB query for this page...

        return array(
            'alias' => $alias,
            'title' => 'Welcome',
            'content' => 'This is our site'
        );
    }
}