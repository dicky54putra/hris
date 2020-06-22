<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Setting */

$this->title = 'Perbarui Data Setting: ' . $model->id_setting;
$this->params['breadcrumbs'][] = ['label' => 'Data Setting Aplikasi', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_setting, 'url' => ['view', 'id' => $model->id_setting]];
$this->params['breadcrumbs'][] = 'Perbarui';
?>
<div class="setting-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>