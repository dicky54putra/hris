<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PesawatSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pesawat-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_pesawat') ?>

    <?= $form->field($model, 'nama_pesawat') ?>

    <?= $form->field($model, 'model_pesawat') ?>

    <?= $form->field($model, 'tipe_pesawat') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
