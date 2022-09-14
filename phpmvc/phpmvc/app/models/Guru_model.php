<?php

class Guru_model
{
    private $table = 'data_guru';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllGuru()
    {
        $this->db->query("SELECT * FROM " . $this->table);
        return $this->db->resultAll();
    }

    public function getGuruById($id)
    {
        $this->db->query("SELECT * FROM " . $this->table . 'WHERE id:=id');
        $this->db->bind('id', $id);
        return $this->db->resultSingle();
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

    public function hapusData($id)
    {
        $query = "DELETE FROM data_guru WHERE id = :id";
        $this->db->query($query);
        $this->db->bind('id', $id);


        $this->db->execute();
        return $this->db->rowCount();
    }
}
