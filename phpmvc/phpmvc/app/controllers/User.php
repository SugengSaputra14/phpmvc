<?php

class User extends controller
{
    public function index()
    {
        $data['judul'] = "User";
        $this->view('templates/header', $data);
        $this->view('user/index');
        $this->view('templates/footer');
    }

    public function profile($nama = "Wahyu", $pekerjaan = "Programmer")
    {
        $data['judul'] = "User";
        $data["nama"] = $nama;
        $data["pekerjaan"] = $pekerjaan;
        $this->view('templates/header', $data);
        $this->view('user/index', $data);
        $this->view('templates/footer');
    }
}
