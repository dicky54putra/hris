<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\grid\GridView;
use backend\models\Pesawat;
use backend\models\Userrole;

/* @var $this yii\web\View */
/* @var $model backend\models\Pesawat */

$this->title = 'Pesawat';
$subtitle = 'Detail Data Pesawat: ' . $model->nama_pesawat;
$this->params['breadcrumbs'][] = ['label' => 'Pesawat', 'url' => ['index']];
if (isset($_GET["submenu"])) {
    $this->params['breadcrumbs'][] = ['label' => 'Data Pesawat', 'url' => ['view', 'id' => Yii::$app->request->get('submenu')]];
}
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="pesawat-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <!-- <p>
        <?= Html::a('Perbarui', ['update', 'id' => $model->id_pesawat], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Hapus', ['delete', 'id' => $model->id_pesawat], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-warning']) ?>
    </p> -->

    <div class="box box-primary">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            // 'id_pesawat',
                            'nama_pesawat',
                            'model_pesawat',
                            'tipe_pesawat',
                        ],

                    ]) ?>

                    <?php

                    if ($model->status_pesawat != 1) {
                        echo '<br><small style="color:#ff1c00;">Sedang Proses Penyetujuan dari admin, silahkan tunggu dulu!</small>';
                    }

                    if ($model->status_pesawat == 1) {
                        # code...
                    ?>
                        <?php

                        $id_login = Yii::$app->user->id;
                        $role = UserRole::find()->where(["id_login" => $id_login])->andWhere(["id_system_role" => 23])->one();

                        if ($role) {
                            if ($query > 0) {
                        ?>
                                <?= Html::beginForm(['cek', 'id' => Yii::$app->request->get('id')], 'post') ?>

                                <br>
                                <p>
                                    <?= Html::submitButton('Cek Lagi', ['class' => 'btn btn-danger']) ?>
                                    <?= Html::a('Setujui', ['setujui', 'id' => $_GET['id']], ['class' => 'btn btn-info']) ?>
                                </p>
                        <?php
                            }
                        }
                        ?>

                        <br>
                        <p><?= Html::a('Tambah Data Lambung', ['lambung/create', 'id' => $model->id_pesawat], ['class' => 'btn btn-success']) ?></p>
                        <br>
                        <?php
                        if ($role) {
                        ?>
                            <?php if ($query > 0) { ?>
                                <?= GridView::widget([
                                    'dataProvider' => $dataProvider,
                                    'filterModel' => $searchModel,
                                    'columns' => [
                                        ['class' => 'yii\grid\SerialColumn'],
                                        [
                                            'class' => 'kartik\grid\CheckboxColumn',
                                            'headerOptions' => ['class' => 'kartik-sheet-style'],
                                        ],
                                        [
                                            'class' => 'yii\grid\ActionColumn',
                                            'header' => 'Actions',
                                            'headerOptions' => ['style' => 'color:#337ab7'],
                                            'template' => "{update} | {delete}",
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
                                                    $url = 'index.php?r=lambung/view&id=' . $model->id_lambung;
                                                    return $url;
                                                }

                                                if ($action === 'update') {
                                                    $url = 'index.php?r=lambung/update&id=' . $model->id_lambung;
                                                    return $url;
                                                }

                                                if ($action === 'delete') {
                                                    $url = 'index.php?r=lambung/delete&id=' . $model->id_lambung;
                                                    return $url;
                                                }
                                            }
                                        ],
                                        [
                                            'attribute' => 'status_dua',
                                            'format' => 'html',
                                            'filter'    => array(0 => "Menunggu", 1 => "Disetujui", 2 => "Cek Ulang"),
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
                                                // return $model->fixediving == 0 ? "Fixediving" : "Rotary Wing";
                                                if ($model->fixediving == 0) {
                                                    return "Fixediving";
                                                } else {
                                                    return "Rotary Wing";
                                                }
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
                                ]) ?>
                            <?php } ?>
                        <?php
                        } else {
                        ?>
                            <?php if ($query > 0) { ?>
                                <?= GridView::widget([
                                    'dataProvider' => $dataProvider,
                                    'filterModel' => $searchModel,
                                    'columns' => [
                                        ['class' => 'yii\grid\SerialColumn'],
                                        [
                                            'class' => 'yii\grid\ActionColumn',
                                            'header' => 'Actions',
                                            'headerOptions' => ['style' => 'color:#337ab7'],
                                            'template' => "{update}",
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
                                                    $url = 'index.php?r=lambung/view&id=' . $model->id_lambung;
                                                    return $url;
                                                }

                                                if ($action === 'update') {
                                                    $url = 'index.php?r=lambung/update&id=' . $model->id_lambung;
                                                    return $url;
                                                }

                                                if ($action === 'delete') {
                                                    $url = 'index.php?r=lambung/delete&id=' . $model->id_lambung;
                                                    return $url;
                                                }
                                            }
                                        ],
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
                                            'filename' => 'Data_Lambung_Pesawat',
                                            'showPageSummary' => true,
                                        ],
                                        GridView::PDF => [
                                            'filename' => 'Data_Lambung_pesawat',
                                            'showPageSummary' => true,
                                        ]
                                    ],
                                ]) ?>
                            <?php } ?>
                        <?php } ?>

                        <?= Html::endForm() ?>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>