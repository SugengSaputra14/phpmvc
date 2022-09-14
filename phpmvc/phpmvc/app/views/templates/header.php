<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman <?= $data['judul']; ?></title>
    <link rel="stylesheet" href="<?= BASE_URL; ?>/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>


<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <div class="container">
            <a class="navbar-brand" href="<?= BASE_URL; ?>">Smkn 2 Web</a>

            <button class="navbar-toggler" type="button" data- toggle="collapse" data-target="#navbarNavAltMarkup" aria- controls="navbarNavAltMarkup" aria-expanded="false" aria- label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">

                <div class="navbar-nav">

                    <a class="nav-item nav-link active" href="<?= BASE_URL; ?>/">Home <span class="sr-only">(current)</span></a>

                    <a class="nav-item nav-link" href="<?= BASE_URL; ?>/datakomli">Komli</a> 

                    <a class="nav-item nav-link" href="<?= BASE_URL; ?>/siswa">Data Siswa</a>

                    <a class="nav-item nav-link" href="<?= BASE_URL; ?>/guru">Data Guru</a>

                    <a class="nav-item nav-link" href="<?= BASE_URL; ?>/user">About</a>
                </div>
            </div>
        </div>
    </nav>