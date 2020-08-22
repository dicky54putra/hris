<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use backend\models\Karyawan;
use backend\models\Absensi;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AbsensiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Absensi';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="absensi-index">

    <div class="box">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">
                    <?= Html::beginForm(['index', array('class' => 'form-inline')]) ?>
                    <div class="form-group col-md-6">
                        <label for="">Tanggal Awal</label>
                        <input type="date" name="tanggal_awal" class="form-control" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Tanggal Akhir</label>
                        <input type="date" name="tanggal_akhir" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <?= Html::submitButton('Search', ['class' => 'btn btn-success']) ?>

                        <?php if ($tanggal_awal) {    ?>
                            <?= Html::a('<span class="fa fa-print"></span> Print', ['cetak-rekap-absensi', 'tanggal_awal' => $tanggal_awal, 'tanggal_akhir' => $tanggal_akhir], ['class' => 'btn btn-primary', 'target' => '_BLANK ']) ?>
                        <?php } ?>
                    </div>
                    <?= Html::endForm(); ?>
                </div>
            </div>
        </div>
    </div>

    <div class="box">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">

                    <table class="table">
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
                                <?php } ?>
                                <p>Data Dari <?= $tanggal_awal . ' s/d ' . $tanggal_akhir ?></p>
                            <?php } ?>
                            </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <?php
    // GridView::widget([
    //     'dataProvider' => $dataProvider,
    //     'filterModel' => $searchModel,
    //     'columns' => [
    //         ['class' => 'yii\grid\SerialColumn'],

    //         [
    //             'attribute' => 'id_karyawan',
    //             'label' => 'Nama Karyawan',
    //             'value' => function ($model) {
    //                 return $model->karyawan->nama_karyawan;
    //             }
    //         ],

    //         [
    //             'attribute' => 'tanggal_absensi',
    //             'label' => 'Tanggal',
    //             'value' => function ($model) {
    //                 return date('D d-m-Y', strtotime($model->tanggal_absensi));
    //             }
    //         ],

    //         // 'tanggal_absensi',
    //         [
    //             'attribute' => 'keterangan_absensi',
    //             'format' => 'raw',
    //             'filter' => array(0 => "Masuk", 1 => "Izin", 2 => "Cuti", 3 => "Alfa",),
    //             'value' => function ($model) {
    //                 if ($model->keterangan_absensi == 0) {
    //                     return "Masuk";
    //                 } elseif ($model->keterangan_absensi == 1) {
    //                     return "Izin";
    //                 } elseif ($model->keterangan_absensi == 2) {
    //                     return "Cuti";
    //                 } else {
    //                     return "Alfa";
    //                 }
    //             }
    //         ]

    //         // ['class' => 'yii\grid\ActionColumn'],
    //     ],
    //     'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
    //     'headerRowOptions' => ['class' => 'kartik-sheet-style'],
    //     'filterRowOptions' => ['class' => 'kartik-sheet-style'],
    //     //'pjax' => true, // pjax is set to always true for this demo
    //     // set your toolbar
    //     'toolbar' =>  [

    //         '{export}',
    //         '{toggleData}',
    //     ],
    //     'toggleDataContainer' => ['class' => 'btn-group mr-2'],
    //     'export' => [
    //         'fontAwesome' => true
    //     ],
    //     'responsiveWrap' => false,
    //     'panel' => [
    //         'type' => GridView::TYPE_PRIMARY,
    //         'heading' => '<h2 class="panel-title"><i class="fa fa-file"></i> Absensi</h2>',
    //     ],
    //     'persistResize' => false,
    //     'toggleDataOptions' => ['minCount' => 100],
    //     'exportConfig' => [
    //         GridView::EXCEL =>  [
    //             'filename' => 'Data_Login',
    //             'showPageSummary' => true,
    //         ],
    //         GridView::PDF => [
    //             'filename' => 'Data_Pesawat',
    //             'showPageSummary' => true,
    //         ]

    //     ],
    // ]);
    ?>
</div>