<?php

use backend\models\Karyawan;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Kontrak */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="kontrak-form">

                <?php $form = ActiveForm::begin(); ?>

                <?php
                if ($model->isNewRecord) {
                    echo $form->field($model, 'id_karyawan')->dropDownList(
                        ArrayHelper::map(Karyawan::find()->where(['status_kontrak' => 0])->asArray()->all(), 'id_karyawan', 'nama_karyawan'),
                        [
                            'prompt' => "Pilih Karyawan",
                            // 'disabled' => true,
                        ]
                    )->label('Karyawan') ?>
                <?php
                } else {
                    echo $form->field($model, 'id_karyawan')->dropDownList(
                        ArrayHelper::map(Karyawan::find()->asArray()->all(), 'id_karyawan', 'nama_karyawan'),
                        [
                            'prompt' => "Pilih Karyawan",
                            'disabled' => true,
                        ]
                    )->label('Karyawan') ?>
                <?php
                }

                ?>

                <?= $form->field($model, 'dari_tanggal')->widget(\yii\jui\DatePicker::classname(), [
                    'clientOptions' => [
                        'changeMonth' => true,
                        'changeYear' => true,
                    ],
                    'dateFormat' => 'yyyy-MM-dd',
                    'options' => ['class' => 'form-control', 'autocomplete' => 'off']
                ]) ?>

                <?= $form->field($model, 'sampai_tanggal')->widget(\yii\jui\DatePicker::classname(), [
                    'clientOptions' => [
                        'changeMonth' => true,
                        'changeYear' => true,
                        // 'minDate' => 0
                    ],
                    'dateFormat' => 'yyyy-MM-dd',
                    'options' => ['class' => 'form-control', 'autocomplete' => 'off']
                ]) ?>

                <?= $form->field($model, 'status_kontrak')->dropDownList(
                    array(
                        0 => 'Kontrak',
                        1 => 'Tetap',
                    )
                )->label('Status Kontrak') ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>