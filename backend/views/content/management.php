<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ContentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Content';
?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="content-index">

                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    // 'filterModel' => $searchModel,
                    'columns' => [
                        [
                            'label' => false,
                            'attribute' => 'judul',
                            'filter' => false,
                            'value' => 'judul'
                        ],
                        [
                            'label' => false,
                            'attribute' => 'deskripsi',
                            'filter' => false,
                            'format' => 'ntext',
                            'value' => 'deskripsi'
                        ],
                    ],
                ]);
                ?>
            </div>
        </div>
    </div>
</div>