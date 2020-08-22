<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\TunjanganSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tunjangan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_tunjangan') ?>

    <?= $form->field($model, 'id_karyawan') ?>

    <?= $form->field($model, 'id_mutasi') ?>

    <?= $form->field($model, 'perihal') ?>

    <?= $form->field($model, 'status_karyawan') ?>

    <?php // echo $form->field($model, 'data_pendukung') ?>

    <?php // echo $form->field($model, 'keterngan') ?>

    <?php // echo $form->field($model, 'tanggal_berita') ?>

    <?php // echo $form->field($model, 'jumlah_uang') ?>

    <?php // echo $form->field($model, 'status_tunjangan') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
