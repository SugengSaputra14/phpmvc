<?php

class DataKomli extends controller
{
    public function index()
    {
        $data['judul'] = "DataKomli";
        $data['datakomli'] = $this->model('DataKomli_model')->getAllDataKomli();
        $this->view('templates/header', $data);
        $this->view('Komli/index', $data);
        $this->view('templates/footer');
    }
}
