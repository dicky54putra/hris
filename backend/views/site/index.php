<?php

use yii\helpers\Html;

/* @var $this yii\web\View */

if (Yii::$app->user->isGuest) {
    header("Location: index.php");
    exit;
}
$this->title = 'Dashboard';
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-index">
    <h1><?= $this->title ?></h1>
    <div class="row">
        <div class="col-lg-3 col-xs-12">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><?= $user_count ?></h3>

                    <p>Pengguna aktif</p>
                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <?= Html::a('Info Lebih Lanjut <i class="fa fa-arrow-circle-right"></i>', ['login/index'], ['class' => 'small-box-footer']) ?>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-12">
            <!-- small box -->
            <div class="small-box bg-green">
                <div class="inner">
                    <h3><?= $pesawat_count ?></h3>

                    <p>Jenis Pesawat</p>
                </div>
                <div class="icon">
                    <i class="fa fa-fighter-jet"></i>
                </div>
                <?= Html::a('Info Lebih Lanjut <i class="fa fa-arrow-circle-right"></i>', ['pesawat/index'], ['class' => 'small-box-footer']) ?>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-12">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3><?= $lambung_count ?></h3>

                    <p>Lambung</p>
                </div>
                <div class="icon">
                    <i class="fa fa-stopwatch"></i>
                </div>
                <?= Html::a('Info Lebih Lanjut <i class="fa fa-arrow-circle-right"></i>', ['lambung/index'], ['class' => 'small-box-footer']) ?>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-12">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <h3><?= $log_count ?></h3>

                    <p>Log</p>
                </div>
                <div class="icon">
                    <i class="fa fa-history"></i>
                </div>
                <?= Html::a('Info Lebih Lanjut <i class="fa fa-arrow-circle-right"></i>', ['log/index'], ['class' => 'small-box-footer']) ?>
            </div>
        </div>
    </div>
</div>