<?php

use backend\models\Karyawan;
use backend\models\Absensi;

$tanggal_awal = $_GET['tanggal_awal'];
$tanggal_akhir = $_GET['tanggal_akhir'];
?>
<div class="box">
    <div class="box-header">
        <div class="col-md-12" style="padding: 0;">
            <div class="box-body">

                <table>
                    <tr>
                        <td>
                            <img src="images/log.PNG" style="width: 20%;" alt="">
                        </td>
                        <td align="center">
                            <h2>
                                <center>REKAP ABSENSI</center>
                            </h2>
                        </td>
                    </tr>
                </table>
                <hr>
                <p>Data Dari <?= $tanggal_awal . ' s/d ' . $tanggal_akhir ?></p>
                <table class="table" border="1" width="100%" style="border-collapse:collapse;">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nama Karyawan</th>
                            <th>Masuk</th>
                            <th>Ijin</th>
                            <th>Cuti</th>
                            <th>Alfa</th>
                        </tr>
                    </thead>

                    <?php if ($tanggal_awal) {    ?>
                        <tbody>
                            <?php
                            $no = 1;
                            $query_karyawan = Absensi::find()->where(["between", "tanggal_absensi", $tanggal_awal, $tanggal_akhir])->groupBy("id_karyawan")->asArray()->all();
                            foreach ($query_karyawan as $key => $data) {
                                # code...
                                $karyawan = Karyawan::findOne($data['id_karyawan']);
                                $masuk = Absensi::find()->where(['id_karyawan' => $karyawan->id_karyawan])->andWhere(['keterangan_absensi' => 0])->count();
                                $ijin = Absensi::find()->where(['id_karyawan' => $karyawan->id_karyawan])->andWhere(['keterangan_absensi' => 1])->count();
                                $cuti = Absensi::find()->where(['id_karyawan' => $karyawan->id_karyawan])->andWhere(['keterangan_absensi' => 2])->count();
                                $alfa = Absensi::find()->where(['id_karyawan' => $karyawan->id_karyawan])->andWhere(['keterangan_absensi' => 3])->count();

                            ?>
                                <tr>
                                    <td><?= $no++ . '.' ?></td>
                                    <td><?= $karyawan->nama_karyawan ?></td>
                                    <td><?= $masuk ?></td>
                                    <td><?= $ijin ?></td>
                                    <td><?= $cuti ?></td>
                                    <td><?= $alfa ?></td>
                                </tr>
                        <?php }
                        } ?>
                        </tbody>
                </table>
                <br>
                <br>
                <br>
                <br>
                <br>
                <img src="images/footer.PNG" alt="">
            </div>
        </div>
    </div>
</div>