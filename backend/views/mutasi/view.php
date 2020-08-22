<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Mutasi */

$this->title = $model->karyawan->nama_karyawan;
$this->params['breadcrumbs'][] = ['label' => 'Mutasi', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="mutasi-view">

                <h1><?= Html::encode($this->title) ?></h1>

                <p>
                    <?= Html::a('Update', ['update', 'id' => $model->id_mutasi], ['class' => 'btn btn-primary']) ?>
                    <?= Html::a('Delete', ['delete', 'id' => $model->id_mutasi], [
                        'class' => 'btn btn-danger',
                        'data' => [
                            'confirm' => 'Are you sure you want to delete this item?',
                            'method' => 'post',
                        ],
                    ]) ?>
                </p>

                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id_mutasi',
                        'karyawan.nama_karyawan',
                        'tanggal_mutasi',
                        // 'promosi',
                        [
                            'attribute' => 'promosi',
                            'format' => 'html',
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
                    ],
                ]) ?>

            </div>
        </div>
    </div>
</div>