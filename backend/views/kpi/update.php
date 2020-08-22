<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Kpi */

$this->title = 'Update Kpi: ' . $model->id_kpi;
$this->params['breadcrumbs'][] = ['label' => 'Kpis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_kpi, 'url' => ['view', 'id' => $model->id_kpi]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kpi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
