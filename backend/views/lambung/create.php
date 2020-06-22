<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Lambung */

$this->title = 'Pesawat';
$subtitle = 'Buat Lambung';
$this->params['breadcrumbs'][] = ['label' => 'Lambungs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lambung-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>