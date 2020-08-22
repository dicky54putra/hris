<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Training */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="training-form">

            <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'judul_training')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'waktu_training')->textInput(['type' => 'date']) ?>

                <?= $form->field($model, 'sertifikat_training')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'penyelenggara_training')->textInput(['maxlength' => true]) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?> 

            </div>
        </div>
    </div>
</div>
