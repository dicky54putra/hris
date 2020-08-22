<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Content */

$this->title = 'Update Content: ' . $model->id_content;
$this->params['breadcrumbs'][] = ['label' => 'Contents', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_content, 'url' => ['view', 'id' => $model->id_content]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="content-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
