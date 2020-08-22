<center>
    <table>
        <tr>
            <td>
                <img src="images/log.PNG" style="width: 20%;" alt="">
            </td>
            <td align="center">
                <h2>
                    <center>DATA KARYAWAN</center>
                </h2>
            </td>
        </tr>
    </table>
    <hr>
    <table border="1" style="width: 100%; border-collapse:collapse;">
        <tr>
            <th>No</th>
            <th width="15%">Nama</th>
            <th width="10%">Nik</th>
            <th width="25%">TTL</th>
            <th width="20%">Alamat Karyawan</th>
            <th width="25%">Pendidikan Terakhir</th>
        </tr>
        <?php $no = 1;
        foreach ($data as $key) : ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $key['nama_karyawan'] ?></td>
                <td><?= $key['nik_karyawan'] ?></td>
                <td><?= $key['tempat_lahir_karyawan'] ?>, <?= date('d M Y', strtotime($key['tanggal_lahir_karyawan'])) ?></td>
                <td><?= $key['alamat_karyawan'] ?></td>
                <td><?= $key['pedidikan_terahir'] ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
    <br>
    <br>
    <br>
    <br>
    <br>
    <img src="images/footer.PNG" alt="">
</center>