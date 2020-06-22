<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\LambungSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lambung-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_lambung') ?>

    <?= $form->field($model, 'id_pesawat') ?>

    <?= $form->field($model, 'no_lambung') ?>

    <?= $form->field($model, 'tanggal') ?>

    <?= $form->field($model, 'jt_pesud') ?>

    <?php // echo $form->field($model, 'jam_putar') ?>

    <?php // echo $form->field($model, 'jt_total') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'harla_yad') ?>

    <?php // echo $form->field($model, 'harla_lalu') ?>

    <?php // echo $form->field($model, 'permasalahan') ?>

    <?php // echo $form->field($model, 'aksi_yg_dilakukan') ?>

    <?php // echo $form->field($model, 'sisa_jt') ?>

    <?php // echo $form->field($model, 'jt_harla') ?>

    <?php // echo $form->field($model, 'blade') ?>

    <?php // echo $form->field($model, 'warranty') ?>

    <?php // echo $form->field($model, 'selesai_warranty') ?>

    <?php // echo $form->field($model, 'crew') ?>

    <?php // echo $form->field($model, 'operasi') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
