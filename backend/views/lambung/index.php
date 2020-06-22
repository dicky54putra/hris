<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\LambungSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Lambung';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lambung-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'status_dua',
                'format' => 'html',
                'value' => function ($model) {
                    if ($model->status_dua == 1) {
                        return "<font color='green'><b></i>Disetujui &#10004;</i></b>";
                    } elseif ($model->status_dua == 2) {
                        return "<font color='red'><b></i>Cek Ulang &#10006;</i></b>";
                    } else {
                        return "<font color='black'><b></i>Menunggu</i></b>";
                    }
                }

            ],
            'no_lambung',
            // 'id_pesawat',
            // 'fixediving',
            [
                'attribute' => 'fixediving',
                'format'    => 'raw',
                'filter'    => array(0 => "Fixediving", 1 => "Rotary Wing"),
                'value'     => function ($model) {
                    return $model->fixediving == 0 ? "Fixediving" : "Rotary Wing";
                }
            ],
            'tanggal',
            // 'kedudukan',
            [
                'attribute' => 'kedudukan',
                'format'    => 'raw',
                'filter'    => array(0 => "W1", 1 => "W2"),
                'value'     => function ($model) {
                    if ($model->kedudukan == 0) {
                        return "W1";
                    } elseif ($model->kedudukan == 1) {
                        return "W2";
                    }
                }
            ],
            'posisi',
            'jenis_operasi',
            'crew',
            'jt_jatah',
            'jt_pesud',
            'jp',
            'jt_total',
            'harla_lalu',
            'harla_yad',
            'permasalahan',
            'tanggal_temuan',
            'aksi',
            'hasil',
            'blade',
            'slu',
            'warranty',
            'keterangan_umum',
            // 'status',
            [
                'attribute' => 'status',
                'format'    => 'raw',
                'filter'    => array(0 => "Open", 1 => "Close"),
                'value'     => function ($model) {
                    return $model->status == 0 ? "<span class='label label-success'>Open</span>" : "<span class='label label-warning'>Close</span>";
                }
            ],
            [
                'attribute' => 'id_login',
                'label' => 'User Yang Mengubah',
                'value' => function ($model) {
                    return $model->login->nama;
                }
            ],
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
        // set export properties
        'export' => [
            'fontAwesome' => true
        ],
        // parameters from the demo form
        //'bordered' => $bordered,
        //'striped' => $striped,
        //'condensed' => $condensed,
        'responsiveWrap' => false,
        //'hover' => $hover,
        //'showPageSummary' => $pageSummary,
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => 'Data Lambung',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => 'Data_LogistikRequest',
                'showPageSummary' => true,
            ],
            GridView::PDF => [
                'filename' => 'Data_Lambung_pesawat',
                'showPageSummary' => true,
            ]

        ],
    ]); ?>
</div>