<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Ijin;
use backend\models\Userrole;

/* @var $this yii\web\View */
/* @var $model backend\models\Ijin */

$this->title = $model->karyawan->nama_karyawan;
$role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
if ($role) {
} else {
    $this->params['breadcrumbs'][] = ['label' => 'Cuti', 'url' => ['index']];
}
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="ijin-view">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php

    $role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
    if ($role) {
    ?>
        <p>
            <?= Html::a('Update', ['update', 'id' => $model->id_ijin], ['class' => 'btn btn-primary']) ?>
        </p>
    <?php } ?>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id_ijin',
                        'ipc',
                        // 'tanggal_ijin',
                        [
                            'attribute' => 'tanggal_ijin',
                            'value' => function ($model) {
                                return date('D  d M Y', strtotime($model->tanggal_ijin));
                            }
                        ],
                        'karyawan.nama_karyawan',
                        'keperluan',
                        [
                            'label' => 'Waktu',
                            'value' => function ($model) {
                                return date('H:i A', strtotime($model->waktu_awal)) . " - " . date('H:i A', strtotime($model->waktu_akhir));
                            }
                        ],
                        [
                            'attribute' => 'status_ijin',
                            'format' => 'raw',
                            'value' => function ($model) {
                                if ($model->status_ijin == 0) {
                                    return "<p class='badge bg-grey'>Menunggu</P>";
                                } elseif ($model->status_ijin == 1) {
                                    return "<p class='badge bg-green'>Disetujui</P>";
                                } else {
                                    return "<p class='badge bg-red'>Ditolak</P>";
                                }
                            }
                        ]
                    ],
                ]) ?>

                <?php
                if ($model->status_ijin == 0) {
                    $role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
                    if ($role) {
                    } else {
                ?>
                        <br>
                        <p>
                            <?= Html::a('Setujui', ['setujui', 'id' => $model->id_ijin], ['class' => 'btn btn-flat bg-green']) ?>
                            <?= Html::a('Tolak', ['tolak', 'id' => $model->id_ijin], ['class' => 'btn btn-flat bg-yellow']) ?>
                        </p>
                <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>