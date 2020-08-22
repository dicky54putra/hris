<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\KontrakSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kontrak';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kontrak-index">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
                'attribute' => 'id_karyawan',
                'label' => 'Nik Karyawan',
                'value' => function ($model) {
                    return $model->karyawan->nik_karyawan;
                }
            ],
            [
                'attribute' => 'id_karyawan',
                'label' => 'Nama Karyawan',
                'value' => function ($model) {
                    return $model->karyawan->nama_karyawan;
                }
            ],
            'dari_tanggal',
            'sampai_tanggal',
            [
                'label' => 'Durasi Kontrak (bulan/hari)',
                'format' => 'raw',
                'value' => function ($model) {
                    $timeStart = strtotime($model->dari_tanggal);
                    $timeEnd = strtotime($model->sampai_tanggal);
                    // Menambah bulan ini + semua bulan pada tahun sebelumnya
                    $numBulan = 0 + (date("Y", $timeEnd) - date("Y", $timeStart)) * 12;
                    $numHari = 0 + (date("m", $timeEnd) - date("m", $timeStart)) * 30;
                    // menghitung selisih bulan
                    $numBulan += date("m", $timeEnd) - date("m", $timeStart);
                    $numHari += date("d", $timeEnd) - date("d", $timeStart);

                    return $numBulan . ' bulan / ' . $numHari . ' hari';
                }
            ],


            ['class' => 'yii\grid\ActionColumn'],
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-file-signature"></i> Kontrak</h2>',
            'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
</div>