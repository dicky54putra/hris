<?php

use yii\helpers\Html;
use backend\models\Userrole;

/* @var $this yii\web\View */
/* @var $model backend\models\Ijin */

$this->title = 'Create Ijin';
$role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
if ($role) {
} else {
    $this->params['breadcrumbs'][] = ['label' => 'Cuti', 'url' => ['index']];
}
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ijin-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>