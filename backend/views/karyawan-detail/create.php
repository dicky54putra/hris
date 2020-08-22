<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\KaryawanDetail */

$this->title = 'Create Karyawan Detail';
$this->params['breadcrumbs'][] = ['label' => 'Karyawan Details', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="karyawan-detail-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
