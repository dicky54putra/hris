<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KpiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kpi';
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

            // 'id_kpi',
            'aku',
            'kpi',
            // 'bobot_kpi',
            [
                'class' => 'kartik\grid\FormulaColumn',
                'attribute' => 'bobot_kpi',
                'value' => 'bobot_kpi',
                'pageSummary' => true,
                'pageSummaryFunc' => GridView::F_SUM,
            ],
            'target',
            'rat',
            //'skor',
            //'skor_akhir',

            ['class' => 'kartik\grid\ActionColumn'],
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
            'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create KPI', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
</div>