<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\BadanUsaha */

$this->title = 'Buat Badan Usaha';
$this->params['breadcrumbs'][] = ['label' => 'Badan Usaha', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="badan-usaha-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>