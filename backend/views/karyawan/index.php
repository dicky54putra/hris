<?php

use yii\helpers\Html;
use backend\models\Userrole;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KaryawanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Karyawan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="karyawan-index">

    <h1><?php // Html::encode($this->title) 
        ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>
    <?php
    $role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 23])->one();
    if ($role) {
    ?>
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                // 'id_karyawan',
                'nama_karyawan',
                'nik_karyawan',
                'tempat_lahir_karyawan',
                'tanggal_lahir_karyawan',
                'alamat_karyawan:ntext',
                // 'keluarga_karyawan:ntext',
                'pedidikan_terahir',

                [
                    'class' => 'kartik\grid\ActionColumn',
                    'header' => 'Actions',
                    'headerOptions' => ['style' => 'color:#337ab7'],
                    'template' => '{view}  {update}  {delete}',
                    'buttons' => [
                        'view' => function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', 'index.php?r=karyawan%2Fvieww&id=' . $model->id_karyawan, [
                                'title' => Yii::t('app', 'lead-view'),
                            ]);
                        },
                    ]
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
                'heading' => '<h2 class="panel-title"><i class="fa fa-user"></i> Data Karyawan</h2>',
                'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']) . '  ' . Html::a('<i class="glyphicon glyphicon-print"></i> Print', ['data-print'], ['class' => 'btn btn-success', 'target' => '_BLANK']),
            ],
            'persistResize' => false,
            'toggleDataOptions' => ['minCount' => 100],
        ]); ?>
    <?php
    } else { ?>
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'nama_karyawan',
                'nik_karyawan',
                'tempat_lahir_karyawan',
                'tanggal_lahir_karyawan',
                'alamat_karyawan:ntext',
                'pedidikan_terahir',

                [
                    'class' => 'kartik\grid\ActionColumn',
                    'header' => 'Actions',
                    'headerOptions' => ['style' => 'color:#337ab7'],
                    'template' => '{view}',
                    'buttons' => [
                        'view' => function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', 'index.php?r=karyawan%2Fviewm&id=' . $model->id_karyawan, [
                                'title' => Yii::t('app', 'lead-view'),
                            ]);
                        },
                    ]
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
                'heading' => '<h2 class="panel-title"><i class="fa fa-user"></i> Karyawan</h2>',
                // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
            ],
            'persistResize' => false,
            'toggleDataOptions' => ['minCount' => 100],
        ]); ?>
    <?php } ?>
</div>