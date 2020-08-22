<style>
    table {
        width: 100%;
    }
</style>
<center>
    <table>
        <tr>
            <td>
                <img src="images/log.PNG" style="width: 20%;" alt="">
            </td>
            <td align="center">
                <h2>
                    <center>SURAT IJIN KARYAWAN</center>
                </h2>
            </td>
        </tr>
    </table>
    <hr>
    <table>
        <tr>
            <td>SURAT IJIN/IPC </td>
            <td>:</td>
            <td><?= $model->ipc ?></td>
        </tr>
        <tr>
            <td>Hari / Tanggal</td>
            <td>:</td>
            <td><?= date('D d-m-Y', strtotime($model->tanggal_ijin)) ?></td>
        </tr>
        <tr>
            <td colspan="3"><br></td>
        </tr>
        <tr>
            <td>Nama</td>
            <td>:</td>
            <td><?= $model->karyawan->nama_karyawan ?></td>
        </tr>
        <tr>
            <td>Regu</td>
            <td>:</td>
            <td><?= $model->mutasi->posisi_baru ?></td>
        </tr>
        <tr>
            <td>Keperluan</td>
            <td>:</td>
            <td><?= $model->keperluan ?></td>
        </tr>
        <tr>
            <td>Waktu</td>
            <td>:</td>
            <td>dari jam <?= date('h:i', strtotime($model->waktu_awal)) ?> sd jam <?= date('h:i', strtotime($model->waktu_akhir)) ?></td>
        </tr>
    </table>
    <br>
    <br>
    <table>
        <tr>
            <td align="center">Pemohon</td>
            <td align="center">Atasan</td>
            <td align="center">Ka. Unit ....</td>
            <td align="center">Ka. Sub Div / Ka. Div</td>
            <td align="center">HRD</td>
        </tr>
        <tr>
            <td><br><br></td>
            <td><br><br></td>
            <td><br><br></td>
            <td><br><br></td>
            <td><br><br></td>
        </tr>
        <tr>
            <td align="center">(.....................)</td>
            <td align="center">(.....................)</td>
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
</center>

<script>
    window.print();
</script>