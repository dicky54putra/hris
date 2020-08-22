<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Kpi */

$this->title = $model->aku;
$this->params['breadcrumbs'][] = ['label' => 'Kpi', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="kpi-view">

                <h1><?= Html::encode($this->title) ?></h1>

                <p>
                    <?= Html::a('Update', ['update', 'id' => $model->id_kpi], ['class' => 'btn btn-primary']) ?>
                    <?= Html::a('Delete', ['delete', 'id' => $model->id_kpi], [
                        'class' => 'btn btn-danger',
                        'data' => [
                            'confirm' => 'Are you sure you want to delete this item?',
                            'method' => 'post',
                        ],
                    ]) ?>
                </p>

                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id_kpi',
                        'aku',
                        'kpi',
                        'bobot_kpi',
                        'target',
                        'rat',
                        // 'skor',
                        // 'skor_akhir',
                    ],
                ]) ?>

            </div>
        </div>
    </div>
</div>