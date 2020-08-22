<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\KaryawanDetail */

$this->title = 'Update Karyawan Detail: ' . $model->id_karyawan_detail;
$this->params['breadcrumbs'][] = ['label' => 'Karyawan Details', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_karyawan_detail, 'url' => ['view', 'id' => $model->id_karyawan_detail]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="karyawan-detail-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
