<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Absensi;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $model backend\models\Karyawan */

$this->title = $model->nama_karyawan;
$this->params['breadcrumbs'][] = ['label' => 'Karyawan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="karyawan-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Data Profesional</h3>
        </div>
        <div class="box-body">
            <?= DetailView::widget([
                'model' => $model,
                'attributes' => [
                    // 'id_karyawan',
                    'nama_karyawan',
                    'nik_karyawan',
                    'tempat_lahir_karyawan',
                    'tanggal_lahir_karyawan',
                    'alamat_karyawan:ntext',
                    'keluarga_karyawan:ntext',
                    'pedidikan_terahir',
                ],
            ]) ?>
        </div>
    </div>

    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Data Personal</h3>
        </div>
        <div class="box-body">
            <?php
            if ($cek_kontrak > 0) {
            ?>
                <br>
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
                <br>
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
                <br>
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
            <?php
            // if ($cek_training > 0) {
            ?>
            <br>
            <?= GridView::widget([
                'dataProvider' => $model_training,
                // 'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'kartik\grid\SerialColumn'],

                    'training.judul_training',
                    'training.waktu_training',
                    'training.penyelenggara_training',

                    // [
                    //     'class' => 'kartik\grid\ActionColumn',
                    //     'header' => 'Actions',
                    //     'headerOptions' => ['style' => 'color:#337ab7'],
                    //     'template' => '{view}  {update}  {delete}',
                    //     'buttons' => [
                    //         'view' => function ($url, $model) {
                    //             return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', 'index.php?r=karyawan%2Fvieww&id=' . $model->id_karyawan, [
                    //                 'title' => Yii::t('app', 'lead-view'),
                    //             ]);
                    //         },
                    //     ]
                    // ],
                ],
                'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
                'headerRowOptions' => ['class' => 'kartik-sheet-style'],
                'filterRowOptions' => ['class' => 'kartik-sheet-style'],
                'toolbar' =>  [

                    '{export}',
                    '{toggleData}',
                ],
                'toggleDataContainer' => ['class' => 'btn-group mr-2'],
                'export' => [
                    'fontAwesome' => true
                ],
                'responsiveWrap' => false,
                'panel' => [
                    'type' => GridView::TYPE_PRIMARY,
                    'heading' => '<h2 class="panel-title"><i class="fa fa-running"></i> Data Training</h2>',
                ],
                'persistResize' => false,
                'toggleDataOptions' => ['minCount' => 100],
            ]); ?>
            <?php //}
            ?>
        </div>
        <div class="box-footer">
            <!-- <a href="index.php?r=data-diri%2Fprint-profesional" target="blank" class="btn btn-flat bg-green pull-right"><i class="fa fa-print"></i></a>
        </div> -->

        </div>
    </div>