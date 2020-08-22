<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Karyawan */

$this->title = $model->nama_karyawan;
// $this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="karyawan-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id_karyawan',
                        'nama_karyawan',
                        'nik_karyawan',
                        'tempat_lahir_karyawan',
                        'tanggal_lahir_karyawan',
                        'alamat_karyawan:ntext',
                        'keluarga_karyawan:ntext',
                        'pedidikan_terahir',
                    ],
                ]) ?>
                <br>
                <?=
                    '<a href="index.php?r=karyawan%2Frole&id=' . $model->id_karyawan . '" class="btn btn-primary">Generate Login</a>' ?>
            </div>
        </div>
    </div>
</div>