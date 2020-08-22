<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use backend\models\Ijin;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\IjinSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Ijin';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ijin-index">


    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'kartik\grid\SerialColumn'],

            // 'id_ijin',
            'ipc',
            // 'tanggal_ijin',
            [
                'attribute' => 'tanggal_ijin',
                'format' => 'raw',
                'value' => function ($model) {
                    return date('D d-M-Y', strtotime($model->tanggal_ijin));
                }
            ],
            // [
            //     'attribute' => 'id_karyawan',
            //     'label' => 'Nama Karyawan',
            //     'format' => 'raw',
            //     'value' => function ($model) {
            //         return $model->karyawan->nama_karyawan;
            //     }
            // ],
            'keperluan',
            [
                'attribute' => 'status_ijin',
                'format' => 'raw',
                'label' => 'Status',
                'filter' => array(1 => 'Disetujui', 2 => 'Ditolak'),
                'value' => function ($model) {
                    if ($model->status_ijin == 1) {
                        return ('<p class="badge bg-green">Disetujui</P> <p class="badge bg-blue"><a class="badge bg-blue" href="index.php?r=ijinkaryawan%2Frequest-print&id=' . $model->id_ijin . '" target="_BLANK">Print</a></p>');
                    } else {
                        return "<p class='badge bg-red'>Ditolak</P>";
                    }
                }
            ],
            // [
            //     'class' => 'kartik\grid\ActionColumn',
            //     'template' => '{view}'
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-plus-square"></i> Request Ijin</h2>',
            // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
</div>