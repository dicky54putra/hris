<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Cuti;
use backend\models\Userrole;
/* @var $this yii\web\View */
/* @var $model backend\models\Cuti */

$this->title = $model->karyawan->nama_karyawan;
$role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
if ($role) {
} else {
    $this->params['breadcrumbs'][] = ['label' => 'Cuti', 'url' => ['index']];
}
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="cuti-view">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php

    $role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
    if ($role) {
    ?>
        <p>
            <?= Html::a('Update', ['update', 'id' => $model->id_cuti], ['class' => 'btn btn-primary']) ?>
        </p>
    <?php } ?>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id_cuti',
                        'karyawan.nama_karyawan',
                        'tanggal_pengajuan',
                        'jenis_cuti',
                        'hak_cuti_tersisa',
                        'hak_cuti_diambil',
                        'waktu_cuti_awal',
                        'waktu_cuti_akhir',
                        'telepon',
                        'keterangan_cuti:ntext',
                        // 'diajukan_tanggal',
                        // 'alasan_cuti_setuju:ntext',
                        // 'status_cuti',
                        [
                            'attribute' => 'status_cuti',
                            'format' => 'raw',
                            'value' => function ($model) {
                                if ($model->status_cuti == 0) {
                                    return "<p class='badge bg-grey'>Menunggu</P>";
                                } elseif ($model->status_cuti == 1) {
                                    return "<p class='badge bg-green'>Disetujui</P>";
                                } else {
                                    return "<p class='badge bg-red'>Ditolak</P>";
                                }
                            }
                        ]
                    ],
                ]) ?>

                <?php
                if ($model->status_cuti == 0) {

                    $role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
                    if ($role) {
                    } else {
                ?>
                        <br>
                        <p>
                            <?= Html::a('Setujui', ['setujui', 'id' => $model->id_cuti], ['class' => 'btn btn-flat bg-green']) ?>
                            <?= Html::a('Tolak', ['tolak', 'id' => $model->id_cuti], ['class' => 'btn btn-flat bg-yellow']) ?>
                        </p>
                <?php
                    }
                }
                ?>

            </div>
        </div>
    </div>
</div>