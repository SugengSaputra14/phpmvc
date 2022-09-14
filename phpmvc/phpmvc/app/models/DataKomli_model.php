 <?php

class DataKomli_model
{
    private $DataKomli = [
        [
            "jurusan1"  => "Rekayasa Perangkat Lunak",
            "jurusan2"  => "Akuntansi",
            "jurusan3"  => "Tehnik Pengelasan",
            "jurusan4"  => "Kuliner",
            "jurusan5"  => "Desain Pemodelan Informasi Dan Bangunan",
            "jurusan6"  => "Teknik Pendingin Dan Tata Udara",
            
        ],

    ];

    public function getAllDataKomli()
    {
        return $this->DataKomli;
    }
}
