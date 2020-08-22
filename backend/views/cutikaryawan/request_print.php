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
                    <center>FORMULIR PERMOHONAN CUTI KARYAWAN</center>
                </h2>
            </td>
        </tr>
    </table>
    <hr>
    <table>
        <tr>
            <td colspan="3"><b>DATA KARYAWAN</b></td>
        </tr>
        <tr>
            <td>NIK</td>
            <td>:</td>
            <td><?= $model->karyawan->nik_karyawan ?></td>
        </tr>
        <tr>
            <td>Nama Lengkap</td>
            <td>:</td>
            <td><?= $model->karyawan->nama_karyawan ?></td>
        </tr>
        <tr>
            <td>Divisi / Bagian / Unit Kerja</td>
            <td>:</td>
            <td><?= $model->mutasi->posisi_baru ?></td>
        </tr>
        <tr>
            <td colspan="3"><br></td>
        </tr>
        <tr>
            <td colspan="3"><b>DATA KARYAWAN</b></td>
        </tr>
        <tr>
            <td>Tanggal Pengajuan Cuti</td>
            <td>:</td>
            <td><?= date('d M Y', strtotime($model->tanggal_pengajuan)) ?></td>
        </tr>
        <tr>
            <td>Jenis Cuti</td>
            <td>:</td>
            <td><?= $model->jenis_cuti ?></td>
        </tr>
        <tr>
            <td>Hak Cuti Tersisa</td>
            <td>:</td>
            <td><?= $model->hak_cuti_tersisa ?></td>
        </tr>
        <tr>
            <td>Hak Cuti Diambil</td>
            <td>:</td>
            <td><?= $model->hak_cuti_diambil ?></td>
        </tr>
        <tr>
            <td>Waktu Cuti (dari tgl. ......s/d tgl. ......</td>
            <td>:</td>
            <td><?= date('d M Y', strtotime($model->waktu_cuti_awal)) . ' - ' . date('d M Y', strtotime($model->waktu_cuti_akhir)) ?></td>
        </tr>
        <tr>
            <td>No. Telepon yang Bisa Dihubungi</td>
            <td>:</td>
            <td><?= $model->telepon ?></td>
        </tr>
        <tr>
            <td>Keterangan / Alasan</td>
            <td>:</td>
            <td><?= $model->keterangan_cuti ?></td>
        </tr>
        <tr>
            <td colspan="3"><br></td>
        </tr>
        <tr>
            <td>Diajukan Tanggal</td>
            <td>:</td>
            <td><?= $model->diajukan_tanggal ?></td>
        </tr>
        <tr>
            <td>Alasan Cuti Disetujui</td>
            <td>:</td>
            <td><?= $model->alasan_cuti_setuju ?></td>
        </tr>
    </table>
    <br>
    <br>
    <table>
        <tr>
            <td align="center">Pemohon</td>
            <td align="center">Atasan</td>
            <td align="center">HRD</td>
            <td align="center">Direktur</td>
        </tr>
        <tr>
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
    <img src="images/footer.PNG" alt="">
</center>