<?php

class Blog extends controller
{
    public function index()
    {
        $data['judul'] = "Blog";
        $data['blog'] = $this->model('Blog_model')->getAllBlog();
        $this->view('templates/header', $data);
        $this->view('blog/index', $data);
        $this->view('templates/footer');
    }

    public function tambah()
    {
        if ($this->model('Siswa_model')->tambahData($_POST) > 0) {
            header('location : ' . BASE_URL . '/siswa');
            exit;
        }
    }
}
