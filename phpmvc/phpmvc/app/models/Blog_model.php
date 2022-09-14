<?php

class Blog_model
{
    private $blog = [
        [
            "penulis"  => "GURU RPL",
            "judul"  => "Belajar Php MVC",
            "tulisan"  => "Models"
        ],
        [
            "penulis"  => "GURU RPL",
            "judul"  => "Belajar Php MVC",
            "tulisan"  => "Views"
        ],
        [
            "penulis"  => "GURU RPL",
            "judul"  => "Belajar Php MVC",
            "tulisan"  => "Controllers"
        ]
    ];

    public function getAllBlog()
    {
        return $this->blog;
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
