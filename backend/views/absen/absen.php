<?php

use yii\helpers\Html;
use backend\models\Absensi;
use kartik\grid\GridView;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KaryawanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Absensi Karyawan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="karyawan-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?= Html::beginForm(['submit_status', 'id' => Yii::$app->request->get('id')], 'post') ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            // [
            //     'class' => 'kartik\grid\CheckboxColumn',
            //     'headerOptions' => ['class' => 'kartik-sheet-style'],
            // ],
            // 'id_karyawan',
            'nama_karyawan',
            [
                'label' => 'Absen',
                'format' => 'raw',
                'value' => function ($model) {
                    $cek_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->andWhere(['tanggal_absensi' => date('Y-m-d')])->count();
                    if ($cek_absensi == 1) {
                        return '<p class="badge bg-gray">Sudah Absen</p>';
                    } else {
                        return "<a href='index.php?r=absen/masuk&id=" . $model->id_karyawan . "' class='btn  bg-blue btn-flat'>Masuk</a>  
                         <a href='index.php?r=absen/izin&id=" . $model->id_karyawan . "' class='btn  bg-green btn-flat'>Ijin</a>   
                         <a href='index.php?r=absen/cuti&id=" . $model->id_karyawan . "' class='btn  bg-yellow btn-flat'>Cuti</a>   
                         <a href='index.php?r=absen/alfa&id=" . $model->id_karyawan . "' class='btn  bg-red btn-flat'>Alfa</a>";
                    }
                }
            ],

            // ['class' => 'yii\grid\ActionColumn'],
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
            'heading' => '<h2 class="panel-title"><i class="fa fa-calendar-alt"></i> Hari / Tanggal : ' . date(' D / d M Y') . '</h2>',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>

</div>

<?= Html::endForm() ?>