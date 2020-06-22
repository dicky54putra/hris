<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\BadanUsaha */

$this->title = 'Detail Data Badan Usaha : ' . $model->id_badan_usaha;
$this->params['breadcrumbs'][] = ['label' => 'Badan Usaha', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="badan-usaha-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Perbarui', ['update', 'id' => $model->id_badan_usaha], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Hapus', ['delete', 'id' => $model->id_badan_usaha], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Anda yakin ingin menghapus item ini?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <div class="box">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">
                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            // 'id_badan_usaha',
                            'badan_usaha',
                        ],
                    ]) ?>

                </div>