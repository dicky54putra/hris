<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TrainingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Training';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="training-index">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id_training',
            'judul_training',
            'waktu_training',
            'sertifikat_training',
            'penyelenggara_training',

            ['class' => 'yii\grid\ActionColumn'],
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-running"></i> Training</h2>',
            'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create Training', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
</div>