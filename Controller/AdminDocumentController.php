<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/29/2016
 * Time: 8:02 PM
 */
class AdminDocumentController extends Controller
{
    /**
     * @param Request $request
     * @return string
     */
    public function indexAction(Request $request)
    {
        // TODO
    }


    /**
     * @param Request $request
     * @return string
     * @throws Exception
     * @throws NotFoundException
     */


    public function addAction(Request $request)
    {
        if ($request->isPost()) {
            $file = new UploadedFile($request, 'document');
            if ($file->uploadIsSuccessful()) {
                $file->move(UPLOAD_DIR . $file->name);
            }
        }

        return $this->render('add');
    }

}