<?php

class Guru extends controller
{
    public function index()
    {
        $data['judul'] = "Guru";
        $data['guru'] = $this->model('Guru_model')->getAllGuru();
        $this->view('templates/header', $data);
        $this->view('guru/index', $data);
        $this->view('templates/footer');
    }

    public function detail($id)
    {
        $data['judul'] = "Detail Guru";
        $data['siswa'] = $this->model('Guru_model')->getGuruById($id);
        $this->view('templates/header', $data);
        $this->view('guru/detail', $data);
        $this->view('templates/footer');
    }

    public function tambah()
    {
        if ($this->model('Guru_model')->tambahData($_POST) > 0) {
            header('Location: ' . BASE_URL . '/guru');
        }
    }

    public function hapus($id)
    {
        if ($this->model('Guru_model')->hapusData($id) > 0) {
            header('Location: ' . BASE_URL . '/guru');
        }
    }
    public function tambahData($data)
    {
        $query = "INSERT INTO data_guru VALUES
        ('', :nama_guru, :komli ) ";
        $this->db->query($query);
        $this->db->bind('nama_guru', $data['nama_guru']);
        $this->db->bind('komli', $data['komli']);
        $this->db->execute();
        return $this->db->rowCount();
    }
}
