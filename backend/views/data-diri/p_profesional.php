<?php

namespace backend\controllers;

use yii\widgets\DetailView;
use backend\models\Absensi;
?>
<center>
    <table>
        <tr>
            <td>
                <img src="images/log.PNG" style="width: 90%;" alt="">
            </td>
            <td align="center">
                <h2>
                    <center>DATA PROFESIONAL KARYAWAN</center>
                </h2>
            </td>
        </tr>
    </table>
    <hr>
    <?php
    if ($cek_kontrak > 0) {
    ?>
        <h2><?= $model->nama_karyawan ?></h2>
        <label for="">Kontrak</label>
        <?= DetailView::widget([
            'model' => $model_kontrak,
            'attributes' => [
                [
                    'label' => 'Kontrak',
                    'format' => 'html',
                    'value' => function ($model) {
                        $timeStart = strtotime($model->dari_tanggal);
                        $timeEnd = strtotime($model->sampai_tanggal);
                        // Menambah bulan ini + semua bulan pada tahun sebelumnya
                        $numBulan = 0 + (date("Y", $timeEnd) - date("Y", $timeStart)) * 12;
                        $numHari = 0 + (date("m", $timeEnd) - date("m", $timeStart)) * 30;
                        // menghitung selisih bulan
                        $numBulan += date("m", $timeEnd) - date("m", $timeStart);
                        $numHari += date("d", $timeEnd) - date("d", $timeStart);

                        return $numBulan . ' bulan (' . date('D d/m/Y', strtotime($model->dari_tanggal))  . ' - ' . date('D d/m/Y', strtotime($model->sampai_tanggal)) . ')';
                    }
                ],
                [
                    'attribute' => 'status_kontrak',
                    'label'     => 'Status Pegawai',
                    'format'    => 'raw',
                    'value'     => function ($model) {
                        return $model->status_kontrak == 0 ? "<span class='label label-success'>Kontrak</span>" : "<span class='label label-primary'>Tetap</span>";
                    }
                ]
            ],
        ]) ?>
    <?php } ?>
    <?php
    if ($cek_mutasi > 0) {
    ?>
        <label for="">Mutasi</label>
        <?= DetailView::widget([
            'model' => $model_mutasi,
            'attributes' => [
                [
                    'label' => 'Tanggal Mutasi',
                    'format' => 'html',
                    'value' => function ($model) {
                        return date('D d/m/Y', strtotime($model->tanggal_mutasi));
                    }
                ],
                'grade',
                [
                    'attribute' => 'promosi',
                    'format'    => 'raw',
                    'value'     => function ($model) {
                        return $model->promosi == 0 ? "<span class='label label-warning'>Mutasi</span>" : "<span class='label label-success'>Promosi</span>";
                    }
                ],
                [
                    'label' => 'Divisi',
                    'value' => function ($model) {
                        return $model->posisi_baru;
                    }
                ]
            ],
        ]) ?>
    <?php } ?>
    <?php
    if ($cek_absensi > 0) {
    ?>
        <label for="">Absensi</label>
        <?= DetailView::widget([
            'model' => $model_absensi,
            'attributes' => [
                [
                    'label' => 'Masuk',
                    'format' => 'html',
                    'value' => function ($model) {
                        $masuk = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->andWhere(['keterangan_absensi' => 0])->count();
                        return $masuk . ' Hari';
                    }
                ],
                [
                    'label' => 'Izin',
                    'format' => 'html',
                    'value' => function ($model) {
                        $masuk = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->andWhere(['keterangan_absensi' => 1])->count();
                        return $masuk . ' Hari';
                    }
                ],
                [
                    'label' => 'Cuti',
                    'format' => 'html',
                    'value' => function ($model) {
                        $masuk = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->andWhere(['keterangan_absensi' => 2])->count();
                        return $masuk . ' Hari';
                    }
                ],
                [
                    'label' => 'Alfa',
                    'format' => 'html',
                    'value' => function ($model) {
                        $masuk = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->andWhere(['keterangan_absensi' => 3])->count();
                        return $masuk . ' Hari';
                    }
                ],
            ],
        ]) ?>
    <?php } ?>

    <img src="images/footer.PNG" alt="">
</center>

<script>
    window.print();
</script>