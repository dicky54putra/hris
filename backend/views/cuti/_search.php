<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\CutiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cuti-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_cuti') ?>

    <?= $form->field($model, 'id_karyawan') ?>

    <?= $form->field($model, 'tanggal_pengajuan') ?>

    <?= $form->field($model, 'jenis_cuti') ?>

    <?= $form->field($model, 'hak_cuti_tersisa') ?>

    <?php // echo $form->field($model, 'hak_cuti_diambil') ?>

    <?php // echo $form->field($model, 'waktu_cuti_awal') ?>

    <?php // echo $form->field($model, 'waktu_cuti_akhir') ?>

    <?php // echo $form->field($model, 'telepon') ?>

    <?php // echo $form->field($model, 'keterangan_cuti') ?>

    <?php // echo $form->field($model, 'diajukan_tanggal') ?>

    <?php // echo $form->field($model, 'alasan_cuti_setuju') ?>

    <?php // echo $form->field($model, 'status_cuti') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
