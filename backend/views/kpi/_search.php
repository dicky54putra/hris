<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\KpiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kpi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_kpi') ?>

    <?= $form->field($model, 'aku') ?>

    <?= $form->field($model, 'kpi') ?>

    <?= $form->field($model, 'bobot_kpi') ?>

    <?= $form->field($model, 'target') ?>

    <?php // echo $form->field($model, 'rat') ?>

    <?php // echo $form->field($model, 'skor') ?>

    <?php // echo $form->field($model, 'skor_akhir') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
