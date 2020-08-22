<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\MutasiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Mutasis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mutasi-index">

    <h1><?php //echo Html::encode($this->title) 
        ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <!-- <p>
        <?= Html::a('Create Mutasi', ['create'], ['class' => 'btn btn-success']) ?>
    </p> -->

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
            'tanggal_mutasi',
            [
                'attribute' => 'promosi',
                'label' => 'Mutasi / Promosi',
                'filter' => array(0 => 'Mutasi', 1 => 'Promosi'),
                'value' => function ($model) {
                    if ($model->promosi == 0) {
                        return 'Mutasi';
                    } else {
                        return 'Promosi';
                    }
                }
            ],
            'grade',
            'posisi_awal',
            'posisi_baru',

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
            'heading' => '<h2 class="panel-title"><i class="fa fa-address-card"></i> MUTASI</h2>',
            'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
</div>