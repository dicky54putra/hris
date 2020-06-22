<?php

use rmrevin\yii\fontawesome\FA;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Userrole;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model backend\models\Lambung */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box box-success">
    <div class="box-header">
        <div class="col-md-12" style="padding: 0;">
            <div class="box-body">

                <div class="lambung-form">
                    <div class="col-lg-11 col-sm-9 col-md-10 col-xs-8"></div>
                    <div class="col-lg-1 col-sm-3 col-md-2 col-xs-4">
                        <?= Html::a('Kembali', ['pesawat/view', 'id' => $model->id_pesawat], ['class' => 'btn btn-warning', 'align' => 'right']); ?>
                    </div>
                    <?php $form = ActiveForm::begin(); ?>

                    <?= $form->field($model, 'id_login')->textInput(['type' => 'hidden'])->label(FALSE) ?>

                    <?= $form->field($model, 'id_pesawat')->textInput(['type' => 'hidden'])->label(FALSE) ?>

                    <?= $form->field($model, 'no_lambung')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'fixediving')->dropDownList(
                        array(
                            '0' => 'Fixediving',
                            '1' => 'Rotary Wing'
                        ),
                    ) ?>


                    <?php if ($model->tanggal == "0000-00-00") {
                        $model->tanggal = Yii::$app->formatter->asDate('now', 'yyyy-MM-dd');
                    }     ?>

                    <?=
                        $form->field($model, 'tanggal')->textInput(['type' => 'date', 'readonly' => TRUE])
                    // $form->field($model, 'tanggal')->widget(DatePicker::classname(), [
                    //         'pluginOptions' => [
                    //             'autoclose' => true,
                    //             'todayBtn' => true,
                    //             'todayHighlight' => true,
                    //             'format' => 'yyyy-mm-dd',
                    //             'defaultDate' => 'tanggal',
                    //         ]
                    //     ]);
                    ?>

                    <?= $form->field($model, 'kedudukan')->dropDownList(
                        array(
                            '0' => 'W1',
                            '1' => 'W2'
                        ),
                    ) ?>

                    <?= $form->field($model, 'posisi')->textInput() ?>

                    <?= $form->field($model, 'jenis_operasi')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'crew')->textInput(['maxlength' => true]) ?>

                    <?php
                    if ($model->id_lambung) {
                        echo $form->field($model, 'jt_jatah')->textInput(['readonly' => TRUE]);
                    } else {
                        echo $form->field($model, 'jt_jatah')->textInput();
                    }

                    ?>

                    <?= $form->field($model, 'jt_pesud')->textInput() ?>

                    <?= $form->field($model, 'jt_total')->textInput(['readonly' => TRUE]) ?>

                    <?= $form->field($model, 'jp')->textInput(['readonly' => TRUE]) ?>

                    <?= $form->field($model, 'harla_lalu')->textInput(['type' => 'date']) ?>

                    <?= $form->field($model, 'harla_yad')->textInput(['type' => 'date']) ?>

                    <?= $form->field($model, 'permasalahan')->textarea(['maxlength' => true]) ?>

                    <?= $form->field($model, 'tanggal_temuan')->textInput(['type' => 'date']) ?>

                    <?= $form->field($model, 'aksi')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'hasil')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'blade')->textInput(['type' => 'date']) ?>

                    <?= $form->field($model, 'slu')->textInput(['type' => 'date']) ?>

                    <?= $form->field($model, 'warranty')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'keterangan_umum')->textarea(['maxlength' => true]) ?>

                    <?= $form->field($model, 'status')->dropDownList(
                        array(
                            '0' => 'Open',
                            '1' => 'Close'
                        ),
                    ) ?>
                    <?php

                    $id_login = Yii::$app->user->id;
                    $role = UserRole::find()->where(["id_login" => $id_login])->andWhere(["id_system_role" => 25])->one();

                    if ($role) {
                    } else {

                    ?>
                        <div class="form-group green">
                            <?= $form->field($model, 'status_dua')->dropDownList(
                                array(
                                    '0' => 'Menunggu',
                                    '1' => 'Setujui',
                                    '2' => 'Cek Lagi'
                                ),
                            )  ?>
                        </div>
                    <?php } ?>

                    <div class="form-group">
                        <?= Html::submitButton('Ajukan', ['class' => 'btn btn-success']) ?>
                        <?= Html::a('Kembali', ['pesawat/view', 'id' => $model->id_pesawat], ['class' => 'btn btn-warning']); ?>
                    </div>

                    <?php ActiveForm::end(); ?>

                </div>

            </div>
        </div>
    </div>
</div>