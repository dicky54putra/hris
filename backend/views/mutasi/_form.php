<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use backend\models\Karyawan;
use backend\models\Mutasi;

/* @var $this yii\web\View */
/* @var $model backend\models\Mutasi */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="mutasi-form">

                <?php $form = ActiveForm::begin(); ?>

                <?php
                if ($model->isNewRecord) {
                    echo $form->field($model, 'id_karyawan')->dropDownList(
                        ArrayHelper::map(Karyawan::find()->where(['status_mutasi' => 0])->asArray()->all(), 'id_karyawan', 'nama_karyawan'),
                        [
                            'prompt' => "Pilih Karyawan",
                        ]
                    )->label('Karyawan');
                } else {
                    echo $form->field($model, 'id_karyawan')->dropDownList(
                        ArrayHelper::map(Karyawan::find()->asArray()->all(), 'id_karyawan', 'nama_karyawan'),
                        [
                            'prompt' => "Pilih Karyawan",
                            'disabled' => true,
                        ]
                    )->label('Karyawan');
                }
                ?>

                <?= $form->field($model, 'tanggal_mutasi')->textInput(['type' => 'date']) ?>

                <?= $form->field($model, 'promosi')->dropDownList(
                    array(
                        '0' => 'Mutasi',
                        '1' => 'Promosi'
                    )
                )->label('Mutasi / Promosi') ?>

                <?= $form->field($model, 'grade')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'posisi_awal')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'posisi_baru')->textInput(['maxlength' => true]) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>