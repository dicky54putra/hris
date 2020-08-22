<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\RequestSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Requests';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="request-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <p>
        <?= Html::a('Create Request', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id_request',
            [
                'attribute' => 'id_karyawan',
                'label' => 'Nama Karyawan',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->karyawan->nama_karyawan;
                }
            ],
            'tanggal',
            // 'keperluan_request',
            [
                'attribute' => 'keperluan_request',
                'filter' => array(0 => 'Izin', 1 => 'Cuti', 2 => 'Tunjangan'),
                'value' => function ($model) {
                    if ($model->keperluan_request == 0) {
                        return "Izin";
                    } elseif ($model->keperluan_request == 1) {
                        return "Cuti";
                    } elseif ($model->keperluan_request == 2) {
                        return "Tunjangan";
                    }
                }
            ],
            'keterangan_request:ntext',
            'status_request',
            [
                'attribute' => 'status_request',
                'format' => 'raw',
                'filter' => array(0 => 'Menunggu', 1 => 'Setuju', 2 => 'Tolak'),
                'value' => function ($model) {
                    if ($model->status_request == 0) {
                        return "Menunggu";
                    } elseif ($model->status_request == 1) {
                        return "Setuju";
                    } else {
                        return "Tolak";
                    }
                }
            ]

            // ['class' => 'yii\grid\ActionColumn'],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        //'pjax' => true, // pjax is set to always true for this demo
        // set your toolbar
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
            'heading' => '',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => 'Data_Login',
                'showPageSummary' => true,
            ],
            GridView::PDF => [
                'filename' => 'Data_Pesawat',
                'showPageSummary' => true,
            ]

        ],
    ]); ?>
</div>