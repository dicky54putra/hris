<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\KontrakSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kontrak-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_kontrak') ?>

    <?= $form->field($model, 'id_karyawan') ?>

    <?= $form->field($model, 'dari_tanggal') ?>

    <?= $form->field($model, 'sampai_tanggal') ?>

    <?= $form->field($model, 'status_kontrak') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
