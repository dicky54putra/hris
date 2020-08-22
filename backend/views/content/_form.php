<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Content */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="content-form">

                <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'deskripsi')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'status_content')->dropDownList(
                    array(
                        0 => 'Active',
                        1 => 'NonActive'
                    )
                ) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>