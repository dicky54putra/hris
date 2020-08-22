<?php

use yii\helpers\Html;
use backend\models\Userrole;

/* @var $this yii\web\View */

if (Yii::$app->user->isGuest) {
    header("Location: index.php");
    exit;
}
$this->title = 'Dashboard';
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-index">
    <?php
    $id_login = Yii::$app->user->id;
    ?>
    <center>
        <h1>Selamat Datang, <?= Yii::$app->user->identity->nama ?></h1>
        <label>SISTEM INFORMASI MANAJEMEN SUMBER DAYA MANUSIA (HRIS)</label>
    </center>
</div>