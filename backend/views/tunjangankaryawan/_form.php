<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Karyawan;
use backend\models\Kontrak;
use backend\models\Mutasi;

/* @var $this yii\web\View */
/* @var $model backend\models\Tunjangan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="box">
    <div class="box-header">
    </div>
    <div class="box-body">
        <div class="tunjangan-form">

            <div class="form-group">
                <?= Html::a('My Request', ['request'], ['class' => 'btn btn-primary']) ?>
            </div>

            <?php

            $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();
            $kon = Kontrak::find()->where(['id_karyawan' => $q->id_karyawan])->one();
            if ($kon) {
            ?>

                <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'id_karyawan')->textInput(['value' => $q->nama_karyawan, 'readonly' => true])->label('Karyawan') ?>

                <?php

                $mut = Mutasi::find()->where(['id_karyawan' => $q->id_karyawan])->one();

                if ($mut) {
                    echo $form->field($model, 'id_mutasi')->textInput(['value' => $mut->posisi_baru, 'readonly' => true])->label('Divisi');
                } else {
                    echo $form->field($model, 'id_mutasi')->textInput(['value' => NULL, 'readonly' => true])->label('Divisi');
                }

                ?>

                <?= $form->field($model, 'perihal')->textInput(['maxlength' => true]) ?>

                <?php
                if ($kon->status_kontrak == 0) {
                    $k = 'Kontrak';
                } else {
                    $k = 'Tetap';
                }


                if ($kon) {
                    echo $form->field($model, 'status_karyawan')->textInput(['value' => $k, 'readonly' => true])->label('Status Karyawan');
                } else {
                    echo $form->field($model, 'status_karyawan')->textInput(['value' => NULL, 'readonly' => true])->label('Status Karyawan');
                }

                ?>

                <?= $form->field($model, 'keterngan')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'tanggal_berita')->textInput(['type' => 'date']) ?>

                <?= $form->field($model, 'jumlah_uang')->textInput(['type' => 'hidden'])->label(false) ?>

                <?= $form->field($model, 'status_tunjangan')->textInput(['value' => 0, 'type' => 'hidden'])->label(false) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            <?php } else { ?>
                <center>
                    <h3>Anda Belum bisa Melakukan permintaan tunjangan. Silahkan lapor ke admin untuk membuat kontrak terlebih dahulu.</h3>
                </center>
            <?php } ?>

        </div>
    </div>
</div>