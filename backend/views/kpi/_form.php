<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Kpi */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="kpi-form">

                <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'aku')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'kpi')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'bobot_kpi')->textInput() ?>

                <?= $form->field($model, 'target')->textInput() ?>

                <?= $form->field($model, 'rat')->textInput() ?>

                <?= $form->field($model, 'skor')->textInput(['type' => 'hidden'])->label(false) ?>

                <?= $form->field($model, 'skor_akhir')->textInput(['type' => 'hidden'])->label(false) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>