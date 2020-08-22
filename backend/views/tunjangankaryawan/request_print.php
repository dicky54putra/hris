<style>
    table {
        width: 100%;
    }
</style>
<center>
    <div class="bg">
        <table>
            <tr>
                <td>
                    <img src="images/log.PNG" style="width: 20%;" alt="">
                </td>
                <td>
                    <h2>
                        <center>FORM PENGAJUAN <br> BANTUAN SUKA / DUKA CITA</center>
                    </h2>
                </td>
            </tr>
        </table>
        <hr>
        <table>
            <tr>
                <td>Nama</td>
                <td colspan="2">: <?= $model->karyawan->nama_karyawan ?></td>
            </tr>
            <tr>
                <td>Divisi</td>
                <td colspan="2">: <?= $model->mutasi->posisi_baru ?></td>
            </tr>
            <tr>
                <td>Status Karyawan</td>
                <td colspan="2">: <?php
                                    if ($model->status_karyawan == 0) {
                                        echo 'Kontrak';
                                    } else {
                                        echo 'Tetap';
                                    } ?></td>
            </tr>
            <tr>
                <td>Perihal</td>
                <td colspan="2">: <?= $model->perihal ?></td>
            </tr>
            <tr>
                <td>Tanggal Berita</td>
                <td colspan="2">: <?= date('d M Y', strtotime($model->tanggal_berita)) ?></td>
            </tr>
            <tr>
                <td>Data Pendukung</td>
                <td colspan="2">: <?php
                                    if ($model->dp_buku_nikah == 1) {
                                        $n = 'Buku Nikah, ';
                                    } else {
                                        $n = '';
                                    }
                                    if ($model->dp_surat_kelahiran == 1) {
                                        $kl = 'Surat Kelahiran, ';
                                    } else {
                                        $kl = '';
                                    }
                                    if ($model->dp_surat_kematian == 1) {
                                        $km = 'Surat Kematian';
                                    } else {
                                        $km = '';
                                    }

                                    echo $n . $kl . $km;
                                    ?></td>
            </tr>
            <tr>
                <td>Keterangan</td>
                <td colspan="2">: <?= $model->keterngan ?></td>
            </tr>
            <tr>
                <td>Jumlah Uang</td>
                <td colspan="2">: Rp. <?= $model->jumlah_uang ?></td>
            </tr>
            <tr>
                <td colspan="3"><br></td>
            </tr>
            <tr>
                <td colspan="3">Dengan demikian pengauan ini disampaikan untuk digunakan dengan sebaik baiknya.</td>
            </tr>
            <tr>
                <td colspan="3"><br></td>
            </tr>
            <tr>
                <td colspan="2"></td>
                <td>Pati,....................<br> Mengetahui, </td>
            </tr>
            <tr>
                <td colspan="3"><br></td>
            </tr>
            <tr>
                <td align="center">Yang Mengajukan</td>
                <td align="center">HRD</td>
                <td align="center">Finance</td>
            </tr>
            <tr>
                <td colspan="3"><br></td>
            </tr>
            <tr>
                <td align="center">(.....................)</td>
                <td align="center">(.....................)</td>
                <td align="center">(.....................)</td>
            </tr>

        </table>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <img src="images/footer.PNG" alt="">
    </div>
</center>