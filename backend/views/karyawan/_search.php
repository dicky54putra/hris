<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\KaryawanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="karyawan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_karyawan') ?>

    <?= $form->field($model, 'nama_karyawan') ?>

    <?= $form->field($model, 'nik_karyawan') ?>

    <?= $form->field($model, 'tempat_lahir_karyawan') ?>

    <?= $form->field($model, 'tanggal_lahir_karyawan') ?>

    <?php // echo $form->field($model, 'alamat_karyawan') ?>

    <?php // echo $form->field($model, 'keluarga_karyawan') ?>

    <?php // echo $form->field($model, 'pedidikan_terahir') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
