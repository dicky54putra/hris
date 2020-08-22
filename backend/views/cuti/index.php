<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CutiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Cuti';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cuti-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'kartik\grid\SerialColumn'],

            // 'id_cuti',
            [
                'attribute' => 'id_karyawan',
                'format' => 'raw',
                'value' => function ($model) {
                    if (!empty($model->karyawan->nama_karyawan)) {
                        return $model->karyawan->nama_karyawan;
                    }
                }
            ],
            'tanggal_pengajuan',
            'jenis_cuti',
            'hak_cuti_tersisa',
            //'hak_cuti_diambil',
            //'waktu_cuti_awal',
            //'waktu_cuti_akhir',
            //'telepon',
            //'keterangan_cuti:ntext',
            //'diajukan_tanggal',
            //'alasan_cuti_setuju:ntext',
            //'status_cuti',

            [
                'class' => 'kartik\grid\ActionColumn',
                'template' => '{view}'
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-water"></i> Request Cuti</h2>',
            // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => 'Data_Menu_Navigasi',
                'showPageSummary' => true,
            ]

        ],
    ]); ?>
</div>