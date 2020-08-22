<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Ijin */

$this->title = 'Update Ijin: ' . $model->id_ijin;
$this->params['breadcrumbs'][] = ['label' => 'Ijin', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_ijin, 'url' => ['view', 'id' => $model->id_ijin]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="ijin-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>