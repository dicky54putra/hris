<?php

use backend\models\Karyawan;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Ijin */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="ijin-form">

                <?php $form = ActiveForm::begin(); ?>

                <?php
                $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();
                ?>
                <?= $form->field($model, 'id_karyawan')->textInput(['value' => $q->nama_karyawan, 'readonly' => true])->label('Karyawan') ?>

                <?= $form->field($model, 'ipc')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'tanggal_ijin')->textInput(['type' => 'date']) ?>

                <?= $form->field($model, 'keperluan')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'waktu_awal')->textInput(['type' => 'time']) ?>

                <?= $form->field($model, 'waktu_akhir')->textInput(['type' => 'time']) ?>

                <?= $form->field($model, 'status_ijin')->textInput(['value' => 0, 'type' => 'hidden'])->label(false) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>