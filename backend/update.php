<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Lambung */

$this->title = 'Pesawat';
$subtitle = 'Detail Lambung: ' . $model->no_lambung . ' | Jenis Pesawat: ' . $model->pesawat['nama_pesawat'];
$this->params['breadcrumbs'][] = ['label' => 'Lambung', 'url' => ['pesawat/view', 'id' => $model->id_pesawat]];
// $this->params['breadcrumbs'][] = ['label' => $model->id_lambung, 'url' => ['view', 'id' => $model->id_lambung]];
$this->params['breadcrumbs'][] = 'Update ' . $model->no_lambung;
?>
<div class="lambung-update">

    <h1><?= $subtitle ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>