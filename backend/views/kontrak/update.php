<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Kontrak */

$this->title = 'Update Kontrak: ' . $model->karyawan->nama_karyawan;
$this->params['breadcrumbs'][] = ['label' => 'Kontrak', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_kontrak, 'url' => ['view', 'id' => $model->id_kontrak]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kontrak-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>