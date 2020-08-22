<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KpiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kpis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kpi-index">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'class' => 'kartik\grid\SerialColumn',
                'contentOptions' => ['class' => 'kartik-sheet-style'],
                'pageSummary' => 'Total',
                'header' => '',
                'headerOptions' => ['class' => 'kartik-sheet-style']
            ],
            'aku',
            'kpi',
            [
                'class' => 'kartik\grid\FormulaColumn',
                'attribute' => 'skor',
                'value' => 'skor',
                'pageSummary' => true,
                'pageSummaryFunc' => GridView::F_SUM,
            ],
            [
                'class' => 'kartik\grid\FormulaColumn',
                'attribute' => 'skor_akhir',
                'value' => 'skor_akhir',
                'pageSummary' => true,
                'pageSummaryFunc' => GridView::F_SUM,
            ],
        ],
        'showPageSummary' => true,
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-address-card"></i> Key Performance Indicator</h2>',
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