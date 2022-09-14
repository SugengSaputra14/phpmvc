<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-6">
                <h3>Data Komli</h3>
                <?php foreach ($data['datakomli'] as $DataKomli) : ?>
                    <ul>
                        <li><?= $DataKomli['jurusan1']; ?></li>
                        <li><?= $DataKomli['jurusan2']; ?></li>
                        <li><?= $DataKomli['jurusan3']; ?></li>
                        <li><?= $DataKomli['jurusan4']; ?></li>
                        <li><?= $DataKomli['jurusan5']; ?></li>
                        <li><?= $DataKomli['jurusan6']; ?></li>
                        
                    </ul>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</body>