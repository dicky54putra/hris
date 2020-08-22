<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Kontrak */

$this->title = $model->karyawan->nama_karyawan;
$this->params['breadcrumbs'][] = ['label' => 'Kontrak', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="kontrak-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_kontrak], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_kontrak], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        [
                            'attribute' => 'id_karyawan',
                            'label' => 'Nama Karyawan',
                            'value' => function ($model) {
                                return $model->karyawan->nama_karyawan;
                            }
                        ],
                        'dari_tanggal',
                        'sampai_tanggal',
                        [
                            'attribute' => 'status_kontrak',
                            'format'    => 'raw',
                            'filter'    => array(0 => "Kontrak Kerja", 1 => "Kontrak Training"),
                            'value'     => function ($model) {
                                return $model->status_kontrak == 0 ? "<span class='label label-success'>Pegawai Kontrak</span>" : "<span class='label label-warning'>Pegawai Tetap</span>";
                            }
                        ],
                        // 'status_kontrak',
                    ],
                ]) ?>

            </div>
        </div>
    </div>
</div>