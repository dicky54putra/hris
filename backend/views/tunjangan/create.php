<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Tunjangan */

$this->title = 'Create Tunjangan';
$this->params['breadcrumbs'][] = ['label' => 'Tunjangan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tunjangan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>