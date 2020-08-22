<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KaryawanDetailSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Karyawan Details';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="karyawan-detail-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Karyawan Detail', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_karyawan_detail',
            'id_karyawan',
            'id_training',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
