<body>
  <div class="container mt-3">
    <div class="row">
      <div class="col-6">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">
          Tambah Data Guru
        </button>
        <h3 class="mt-4">Data Guru</h3>
        <ul class="list-group">
          <?php foreach ($data['guru'] as $guru) : ?>
            <li class="list-group-item">
              <?= $guru['nama']; ?>
              <a href="<?= BASE_URL; ?>/guru/hapus/<?= $guru['id']; ?>" class="btn btn-danger float-right ml-1" onclick="return confirm('anda yakin ingin menghapus data guru tersebut')">Hapus</a>
              <a href="<?= BASE_URL; ?>/guru/detail/<?= $guru['id']; ?>" class="btn btn-success float-right ml-1">detail</a>
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
          <h5 class="modal-title" id="exampleModalLabel">Tambah Data Guru</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="<?= BASE_URL; ?>/Guru/tambah" method="POST">
            <div class="form-group">
              <label for="nama_guru">Nama Guru</label>
              <input type="text" class="form-control" id="nama_guru" name="nama_guru">
            </div>
            <div class="form-group">
              <label for="komli">Kompetensi Keahlian</label>
              <select class="form-control" id="komli" name="komli">
                <option value="pemrograman_web">Pemrograman Web</option>
                <option value="pemrograman_berorientasi_objek">Pemrograman Berorientasi Objek</option>
              </select>
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