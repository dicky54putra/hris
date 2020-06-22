<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pesawat */

$this->title = 'Pesawat';
$subtitle = 'Perbarui Pesawat: ' . $model->nama_pesawat;
$this->params['breadcrumbs'][] = ['label' => 'Pesawat', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->nama_pesawat, 'url' => ['view', 'id' => $model->id_pesawat]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pesawat-update">

    <h1><?= $subtitle; ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>