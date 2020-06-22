<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;
use backend\models\UserRole;
use backend\models\Lambung;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PesawatSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

// $this->title2 = 'Pesawat';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pesawat-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <p>
        <?= Html::a('Tambah Data Pesawat', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php
    $id_login = Yii::$app->user->id;
    $role = UserRole::find()->where(["id_login" => $id_login])->andWhere(["id_system_role" => 23])->one();

    if ($role) {
    ?>
        <?= Html::beginForm(['cekk'], 'post') ?>

        <br>
        <p>
            <?= Html::submitButton('Cek Lagi', ['class' => 'btn btn-danger']) ?>
            <?= Html::a('Setujui', ['setuju',], ['class' => 'btn btn-info']) ?>
        </p>
    <?php
    }

    if ($role) {
    ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                [
                    'class' => 'kartik\grid\CheckboxColumn',
                    'headerOptions' => ['class' => 'kartik-sheet-style'],
                ],
                ['class' => 'yii\grid\ActionColumn'],

                // 'id_pesawat',
                // 'status_pesawat',
                [
                    'attribute' => 'status_pesawat',
                    'format' => 'html',
                    'value' => function ($model) {
                        if ($model->status_pesawat == 1) {
                            return "<font color='green'><b></i>Disetujui &#10004;</i></b>";
                        } elseif ($model->status_pesawat == 2) {
                            return "<font color='red'><b></i>Cek Ulang &#10006;</i></b>";
                        } else {
                            return "<font color='black'><b></i>Menunggu</i></b>";
                        }
                    }

                ],
                'nama_pesawat',
                'model_pesawat',
                'tipe_pesawat',
                [
                    'label' => 'Status Lambung',
                    'format' => 'html',
                    'value' => function ($model) {
                        $cek = Lambung::find()->where(['id_pesawat' => $model->id_pesawat])->andWhere(['status_dua' => 0])->count();
                        if ($cek == 1) {
                            return "menunggu";
                        } else {
                            return "siap";
                        }
                        // return $cek;
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
                'heading' => '',
            ],
            'persistResize' => false,
            'toggleDataOptions' => ['minCount' => 100],
            'exportConfig' => [
                GridView::EXCEL =>  [
                    'filename' => 'Data_Pesawat',
                    'showPageSummary' => true,
                ],
                GridView::PDF => [
                    'filename' => 'Data_Pesawat',
                    'showPageSummary' => true,
                ]
            ],
            //'itemLabelSingle' => 'book',
            //'itemLabelPlural' => 'books'
        ]); ?>

    <?php } else { ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                // ['class' => 'yii\grid\ActionColumn'],
                [
                    'class' => 'yii\grid\ActionColumn',
                    'header' => 'Actions',
                    'headerOptions' => ['style' => 'color:#337ab7'],
                    'template' => "{view}   |   {update}",
                    'buttons' => [
                        'view' => function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                'title' => Yii::t('app', 'lead-view'),
                            ]);
                        },

                        'update' => function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-pencil"></span>', $url, [
                                'title' => Yii::t('app', 'lead-update'),
                            ]);
                        },
                        'delete' => function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                                'title' => Yii::t('app', 'lead-delete'),
                                'data' => [
                                    'confirm' => 'Anda yakin ingin menghapus data?',
                                    'method' => 'POST',
                                ],
                            ]);
                        },

                    ],
                    'urlCreator' => function ($action, $model, $key, $index) {
                        if ($action === 'view') {
                            $url = 'index.php?r=pesawat/view&id=' . $model->id_pesawat;
                            return $url;
                        }

                        if ($action === 'update') {
                            $url = 'index.php?r=pesawat/update&id=' . $model->id_pesawat;
                            return $url;
                        }

                        if ($action === 'delete') {
                            $url = 'index.php?r=pesawat/delete&id=' . $model->id_pesawat;
                            return $url;
                        }
                    }
                ],

                // 'id_pesawat',
                'nama_pesawat',
                'model_pesawat',
                'tipe_pesawat',
                [
                    'attribute' => 'status_pesawat',
                    'format' => 'html',
                    'value' => function ($model) {
                        if ($model->status_pesawat == 1) {
                            return "<font color='green'><b></i>Disetujui &#10004;</i></b>";
                        } elseif ($model->status_pesawat == 2) {
                            return "<font color='red'><b></i>Cek Ulang &#10006;</i></b>";
                        } else {
                            return "<font color='black'><b></i>Menunggu</i></b>";
                        }
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
                'heading' => '',
            ],
            'persistResize' => false,
            'toggleDataOptions' => ['minCount' => 100],
            'exportConfig' => [
                GridView::EXCEL =>  [
                    'filename' => 'Data_Pesawat',
                    'showPageSummary' => true,
                ],
                GridView::PDF => [
                    'filename' => 'Data_Pesawat',
                    'showPageSummary' => true,
                ]
            ],
            //'itemLabelSingle' => 'book',
            //'itemLabelPlural' => 'books'
        ]); ?>

    <?php } ?>
</div>