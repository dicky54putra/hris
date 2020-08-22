<?php


use backend\models\Karyawan;
use backend\models\Training;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\KaryawanDetail */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="karyawan-detail-form">

                <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'id_karyawan')->dropDownList(
                    ArrayHelper::map(Karyawan::find()->asArray()->all(), 'id_karyawan', 'nama_karyawan'),
                    [
                        'prompt' => "Pilih Karyawan",
                        // 'disabled' => true,
                    ]
                )->label('Karyawan') ?>

                <?= $form->field($model, 'id_training')->dropDownList(
                    ArrayHelper::map(Training::find()->asArray()->all(), 'id_training', 'judul_training'),
                    [
                        'prompt' => "Pilih Training",
                        // 'disabled' => true,
                    ]
                )->label('Training') ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>