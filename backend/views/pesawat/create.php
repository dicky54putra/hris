<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pesawat */

$this->title = 'Pesawat';
$this->params['breadcrumbs'][] = ['label' => 'Pesawat', 'url' => ['index']];
$subtitle = 'Create Pesawat';
$this->params['breadcrumbs'][] = $subtitle;
?>
<div class="pesawat-create">

    <h1><?= $subtitle ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>