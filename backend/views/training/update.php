<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Training */

$this->title = 'Update Training: ' . $model->id_training;
$this->params['breadcrumbs'][] = ['label' => 'Training', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_training, 'url' => ['view', 'id' => $model->id_training]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="training-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
