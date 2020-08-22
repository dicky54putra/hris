<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TunjanganSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tunjangan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tunjangan-index">

    <h1><?php // Html::encode($this->title) 
        ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'kartik\grid\SerialColumn'],

            // 'id_tunjangan',
            // 'karyawan.nama_karyawan',
            [
                'attribute' => 'id_karyawan',
                'label' => 'Nama Karyawan',
                'format' => 'html',
                'value' => function ($model) {
                    if (!empty($model->karyawan->nama_karyawan)) {
                        return $model->karyawan->nama_karyawan;
                    }
                }
            ],
            [
                'attribute' => 'id_mutasi',
                'label' => 'Divisi',
                'format' => 'html',
                'value' => function ($model) {
                    if (!empty($model->mutasi->posisi_baru)) {
                        return $model->mutasi->posisi_baru;
                    }
                }
            ],
            // 'mutasi.posisi_baru',
            'perihal',
            // 'status_karyawan',
            [
                'attribute' => 'status_karyawan',
                'label' => 'Status',
                'format' => 'html',
                'value' => function ($model) {
                    if ($model->status_karyawan) {
                        return "<p class='badge bg-green'> Pegawai Tetap</p>";
                    } else {
                        return "<p class='badge bg-gray'> Pegawai Kontrak</p>";
                    }
                }
            ],
            //'data_pendukung',
            //'keterngan:ntext',
            //'tanggal_berita',
            //'jumlah_uang',
            // 'status_tunjangan',

            [
                'class' => 'kartik\grid\ActionColumn',
                'template' => "{view}"
            ],
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-receipt"></i> Request Tunjangan</h2>',
            // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => 'Data_Request_Tunjangan',
                'showPageSummary' => true,
            ]

        ],
    ]); ?>
</div>