<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use backend\models\Karyawan;

/* @var $this yii\web\View */
/* @var $model backend\models\Absensi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="absensi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_karyawan')->dropDownList(
        ArrayHelper::map(Karyawan::find()->all(), 'id_karyawan', 'nama_karyawan'),
        [
            'prompt' => "Pilih Karyawan",
            // 'disabled' => true,
        ]
    )->label('Karyawan') ?>

    <?php
    $date = date('Y-m-d');
    ?>
    <?= $form->field($model, 'tanggal_absensi')->textInput(['type' => 'date', 'value' => $date]) ?>

    <?= $form->field($model, 'keterangan_absensi')->dropDownList(
        array(
            0 => 'Masuk',
            1 => 'Izin',
            2 => 'Cuti',
            3 => 'Alfa',
        )
    ) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>