<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\BadanUsaha */

$this->title = 'Perbarui Badan Usaha : ' . $model->id_badan_usaha;
$this->params['breadcrumbs'][] = ['label' => 'Badan Usaha', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_badan_usaha, 'url' => ['view', 'id' => $model->id_badan_usaha]];
$this->params['breadcrumbs'][] = 'Perbarui';
?>
<div class="badan-usaha-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>