<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AbsensiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="absensi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_absensi') ?>

    <?= $form->field($model, 'id_karyawan') ?>

    <?= $form->field($model, 'tanggal_absensi') ?>

    <?= $form->field($model, 'keterangan_absensi') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
