<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Login;

/* @var $this yii\web\View */
/* @var $model backend\models\Karyawan */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="karyawan-form">

                <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'nama_karyawan')->textInput(['maxlength' => true]) ?>
                <?php if (Yii::$app->request->get('id')) { ?>
                    <?= $form->field($model, 'nik_karyawan')->textInput(['readonly' => true]) ?>
                <?php } else { ?>
                    <?= $form->field($model, 'nik_karyawan')->textInput() ?>
                <?php } ?>
                <div class="row">
                    <div class="col-md-6">
                        <?= $form->field($model, 'tempat_lahir_karyawan')->textInput(['maxlength' => true]) ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, 'tanggal_lahir_karyawan')->textInput(array('type' => 'date')) ?>
                    </div>
                </div>

                <?= $form->field($model, 'alamat_karyawan')->textarea(['rows' => 6]) ?>

                <?php if (Yii::$app->request->get('id')) { ?>
                    <?= $form->field($model, 'keluarga_karyawan')->textarea() ?>
                <?php } else { ?>
                    <?= $form->field($model, 'keluarga_karyawan')->textarea([
                        'rows' => 6,
                        'value' =>
                        'Istri / Suami : 
Anak : 
Anak : 
Anak : 

Ayah :
Ibu :
Saudara Kandung :
',
                    ]) ?>
                <?php } ?>

                <?= $form->field($model, 'pedidikan_terahir')->textInput(['maxlength' => true]) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>