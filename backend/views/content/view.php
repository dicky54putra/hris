<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Content */

$this->title = $model->judul;
$this->params['breadcrumbs'][] = ['label' => 'Content', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="content-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_content], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_content], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id_content',
                        'judul',
                        'deskripsi:ntext',
                        [
                            'attribute' => 'status_content',
                            'format' => 'html',
                            'value' => function ($model) {
                                if ($model->status_content == 0) {
                                    return '<p class="badge bg-green">Active</p>';
                                } else {
                                    return '<p class="badge bg-red">NonActive</p>';
                                }
                            }
                        ],
                    ],
                ]) ?>

            </div>
        </div>
    </div>
</div>