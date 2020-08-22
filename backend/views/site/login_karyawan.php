<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

$path = \Yii::getAlias("@web");
$frontend = \Yii::getAlias("@frontend");

$this->title = 'Masuk';

$fieldOptions1 = [
    'options' => ['class' => 'form-group has-feedback'],
    'inputTemplate' => "{input}<span class='glyphicon glyphicon-envelope form-control-feedback'></span>"
];

$fieldOptions2 = [
    'options' => ['class' => 'form-group has-feedback'],
    'inputTemplate' => "{input}"
];
?>

<div class="login-box">
    <div class="login-logo">
    </div>
    <!-- /.login-logo -->

    <div class="login-box-body">

        <!-- <img src="images/header_cito.jpg" width="320"><br><br> -->

        <div class="row" align="center">
            <h1><b>Login Karyawan</b></h1>
        </div>
        <br>


        <?php $form = ActiveForm::begin(['id' => 'login-karyawan-form', 'enableClientValidation' => false]); ?>

        <?= $form
            ->field($model, 'username', $fieldOptions1)
            ->label(false)
            ->textInput(['placeholder' => 'NIK']) ?>

        <?= $form
            ->field($model, 'password', $fieldOptions2)
            ->label(false)
            ->passwordInput(['placeholder' => $model->getAttributeLabel('password'), 'readonly' => true, 'type' => 'hidden', 'value' => 0]) ?>

        <div class="row">
            <!-- /.col -->
            <div class="col-xs-4">
                <?= Html::submitButton('Sign in', ['class' => 'btn btn-primary btn-block btn-flat', 'name' => 'login-button']) ?>
            </div>
            <!-- /.col -->
        </div>


        <?php ActiveForm::end(); ?>


    </div>
    <!-- /.login-box-body -->
</div><!-- /.login-box -->