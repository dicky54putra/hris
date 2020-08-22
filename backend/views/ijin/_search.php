<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\IjinSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ijin-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_ijin') ?>

    <?= $form->field($model, 'ipc') ?>

    <?= $form->field($model, 'tanggal_ijin') ?>

    <?= $form->field($model, 'id_karyawan') ?>

    <?= $form->field($model, 'keperluan') ?>

    <?php // echo $form->field($model, 'waktu_awal') ?>

    <?php // echo $form->field($model, 'waktu_akhir') ?>

    <?php // echo $form->field($model, 'status_ijin') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
