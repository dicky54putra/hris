<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MutasiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mutasi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_mutasi') ?>

    <?= $form->field($model, 'id_karyawan') ?>

    <?= $form->field($model, 'tanggal_mutasi') ?>

    <?= $form->field($model, 'promosi') ?>

    <?= $form->field($model, 'grade') ?>

    <?php // echo $form->field($model, 'posisi_awal') ?>

    <?php // echo $form->field($model, 'posisi_baru') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
