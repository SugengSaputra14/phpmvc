<?php

class Siswa extends controller
{
    public function index()
    {
        $data['judul'] = "Siswa";
        $data['siswa'] = $this->model('Siswa_model')->getAllSiswa();
        $this->view('templates/header', $data);
        $this->view('siswa/index', $data);
        $this->view('templates/footer');
    }

    public function detail($id)
    {
        $data['judul'] = "Detail Siswa";
        $data['siswa'] = $this->model('Siswa_model')->getSiswaById($id);
        $this->view('templates/header', $data);
        $this->view('siswa/detail', $data);
        $this->view('templates/footer');
    }

    public function tambah()
    {
        if ($this->model('Siswa_model')->tambahData($_POST) > 0) {
            header('Location: ' . BASE_URL . '/siswa');
        }
    }

    public function hapus($id)
    {
        if ($this->model('Siswa_model')->hapusData($id) > 0) {
            header('Location: ' . BASE_URL . '/siswa');
        }
    }
    public function tambahData($data)
    {
        $query = "INSERT INTO data_siswa VALUES
        ('', :nama, :jenis_kelamin, :alamat ) ";
        $this->db->query($query);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('jenis_kelamin', $data['jenis_kelamin']);
        $this->db->bind('alamat', $data['alamat']);
        $this->db->execute();
        return $this->db->rowCount();
    }
}
