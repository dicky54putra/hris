<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Cuti */

$this->title = 'Acc Cuti: ' . $model->karyawan->nama_karyawan;
$this->params['breadcrumbs'][] = ['label' => 'Cuti', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->karyawan->nama_karyawan, 'url' => ['view', 'id' => $model->id_cuti]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="cuti-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <div class="cuti-form">

                    <?php $form = ActiveForm::begin(); ?>

                    <?= $form->field($model, 'diajukan_tanggal')->textInput(['type' => 'date', 'value' => date('Y-m-d'), 'readonly' => true]) ?>

                    <?= $form->field($model, 'alasan_cuti_setuju')->textarea(['rows' => 6]) ?>

                    <?= $form->field($model, 'status_cuti')->textInput(['value' => 0, 'type' => 'hidden'])->label(false) ?>

                    <div class="form-group">
                        <?= Html::submitButton('Accept', ['class' => 'btn btn-success']) ?>
                    </div>

                    <?php ActiveForm::end(); ?>

                </div>
            </div>
        </div>
    </div>

</div>