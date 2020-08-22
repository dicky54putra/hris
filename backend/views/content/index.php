<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ContentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Content';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="content-index">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id_content',
            'judul',
            'deskripsi:ntext',
            [
                'attribute' => 'status_content',
                'format' => 'raw',
                'filter' => array(0 => 'Active', 1 => 'NonActive'),
                'value' => function ($model) {
                    if ($model->status_content == 0) {
                        return '<p class="badge bg-green">Active</p>';
                    } else {
                        return '<p class="badge bg-red">NonActive</p>';
                    }
                }
            ],

            [
                'class' => 'kartik\grid\ActionColumn',
                'template' => '{view}  |  {update}'
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-tasks"></i> Knowladge Management</h2>',
            // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
</div>