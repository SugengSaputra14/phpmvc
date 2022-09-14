<body>
    <div class="container mt-3">
        <div class="row">
            <div class="col-6">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">
                    Tambah Data Siswa
                </button>
                <h3 class="mt-4">Data Siswa</h3>
                <ul class="list-group">
                    <?php foreach ($data['siswa'] as $siswa) : ?>
                        <li class="list-group-item">
                            <?= $siswa['nama']; ?>
                            <a href="<?= BASE_URL; ?>/siswa/hapus/<?= $siswa['id']; ?>" class="btn btn-danger float-right ml-1" onclick="return confirm('anda yakin ingin menghapus data siswa tersebut')">Hapus</a>
                            <a href="<?= BASE_URL; ?>/siswa/detail/<?= $siswa['id']; ?>" class="btn btn-success float-right ml-1">detail</a>
                        </li>

                    <?php endforeach; ?>
                </ul>

            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="judulModal">Tambah Data Siswa</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="<?= BASE_URL; ?>/Siswa/tambah" method="POST">
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control" id="nama" name="nama">
                        </div>
                        <div class="form-group">
                            <label for="jenis_kelamin">Jenis Kelamin</label>
                            <select class="form-control" id="jenis_kelamin" name="jenis_kelamin">
                                <option value="lakilaki">Laki - laki</option>
                                <option value="perempuan">Perempuan</opt ion>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <input type="text" class="form-control" id="alamat" name="alamat">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                            <button type="submit" class="btn btn-success">Tambah Data</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</body>