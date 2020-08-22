<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Karyawan;
use backend\models\Cuti;

/* @var $this yii\web\View */
/* @var $model backend\models\Cuti */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="cuti-form">

                <?php $form = ActiveForm::begin(); ?>

                <div class="form-group">
                    <?= Html::a('My Request', ['request'], ['class' => 'btn btn-primary']) ?>
                </div>

                <?php
                $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();
                ?>
                <?= $form->field($model, 'id_karyawan')->textInput(['value' => $q->nama_karyawan, 'readonly' => true])->label('Karyawan') ?>

                <?= $form->field($model, 'tanggal_pengajuan')->textInput(['type' => 'date', 'value' => date('Y-m-d'), 'readonly' => true]) ?>

                <?= $form->field($model, 'jenis_cuti')->textInput(['maxlength' => true]) ?>

                <?php

                $sisa = Cuti::find()->where(['id_karyawan' => $q->id_karyawan])->orderBy('id_cuti DESC')->one();
                $sisa_count = Cuti::find()->where(['id_karyawan' => $q->id_karyawan])->one();
                // echo $sisa->hak_cuti_tersisa;
                if ($sisa_count) {
                    echo $form->field($model, 'hak_cuti_tersisa')->textInput(['value' => $sisa->hak_cuti_tersisa, 'readonly' => true]);
                } else {
                    echo $form->field($model, 'hak_cuti_tersisa')->textInput(['value' => 10, 'readonly' => true]);
                }

                ?>


                <?= $form->field($model, 'hak_cuti_diambil')->textInput(['type' => 'hidden'])->label(false) ?>

                <?= $form->field($model, 'waktu_cuti_awal')->textInput(['type' => 'date']) ?>

                <?= $form->field($model, 'waktu_cuti_akhir')->textInput(['type' => 'date']) ?>

                <?= $form->field($model, 'telepon')->textInput() ?>

                <?= $form->field($model, 'keterangan_cuti')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'status_cuti')->textInput(['value' => 0, 'type' => 'hidden'])->label(false) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>