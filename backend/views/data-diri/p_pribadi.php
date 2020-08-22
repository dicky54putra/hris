<?php

namespace backend\controllers;

use yii\widgets\DetailView;
?>
<center>
    <table>
        <tr>
            <td>
                <img src="images/log.PNG" style="width: 90%;" alt="">
            </td>
            <td align="center">
                <h2>
                    <center>DATA PERSONAL KARYAWAN</center>
                </h2>
            </td>
        </tr>
    </table>
    <hr>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            // 'id_karyawan',
            'nama_karyawan',
            'nik_karyawan',
            // 'tempat_lahir_karyawan',
            // 'tanggal_lahir_karyawan',
            [
                'label' => 'TTL',
                'format' => 'html',
                'value' => function ($model) {
                    return $model->tempat_lahir_karyawan . ', ' . date('d-m-Y', strtotime($model->tanggal_lahir_karyawan));
                }
            ],
            'alamat_karyawan:ntext',
            'keluarga_karyawan:ntext',
            'pedidikan_terahir',
        ],
    ]) ?>

    <img src="images/footer.PNG" alt="">
</center>

<script>
    window.print();
</script>