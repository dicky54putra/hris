<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Training */

$this->title = 'Create Training';
$this->params['breadcrumbs'][] = ['label' => 'Training', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="training-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
