<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Tunjangan */

$this->title = 'Update Tunjangan: ' . $model->id_tunjangan;
$this->params['breadcrumbs'][] = ['label' => 'Tunjangan', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_tunjangan, 'url' => ['view', 'id' => $model->id_tunjangan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tunjangan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>