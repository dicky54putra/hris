<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Request */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="request-form">

                <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'id_karyawan')->textInput() ?>

                <?= $form->field($model, 'tanggal')->textInput(['type' => 'date']) ?>

                <?= $form->field($model, 'keperluan_request')->dropDownList(
                    array(
                        1 => 'Izin',
                        2 => 'Cuti',
                        0 => 'Tunjangan',
                    ),
                    [
                        'prompt' => 'Pilih Keperluan Anda'
                    ]
                ) ?>

                <?= $form->field($model, 'keterangan_request')->textarea(['rows' => 6]) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>