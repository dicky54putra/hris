<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Pesawat */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pesawat-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama_pesawat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'model_pesawat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tipe_pesawat')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>