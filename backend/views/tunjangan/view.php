<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Tunjangan;
use backend\models\Userrole;

/* @var $this yii\web\View */
/* @var $model backend\models\Tunjangan */

$this->title = $model->karyawan->nama_karyawan;
$role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
if ($role) {
} else {
    $this->params['breadcrumbs'][] = ['label' => 'Tunjangan', 'url' => ['index']];
}
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<h1><?= Html::encode($this->title) ?></h1>

<?php

// $role = Userrole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(['id_system_role' => 26])->one();
if ($role) { ?>
    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_tunjangan], ['class' => 'btn btn-primary']) ?>
    </p>
<?php } ?>
<div class="box">
    <div class="box-header">
        <div class="box-body">
            <div class="tunjangan-view">

                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id_tunjangan',
                        'karyawan.nama_karyawan',
                        // 'id_mutasi',
                        'perihal',
                        [
                            'attribute' => 'id_mutasi',
                            'label' => 'Divisi',
                            'format' => 'html',
                            'value' => function ($model) {
                                return $model->mutasi->posisi_baru;
                            }
                        ],
                        // 'data_pendukung',
                        [
                            'attribute' => 'data_pendukung',
                            'format' => 'ntext',
                            'value' => function ($model) {
                                if ($model->dp_buku_nikah == 1) {
                                    $n = 'Buku Nikah, ';
                                } else {
                                    $n = '';
                                }
                                if ($model->dp_surat_kelahiran == 1) {
                                    $kl = 'Surat Kelahiran, ';
                                } else {
                                    $kl = '';
                                }
                                if ($model->dp_surat_kematian == 1) {
                                    $km = 'Surat Kematian';
                                } else {
                                    $km = '';
                                }

                                return $n . $kl . $km;
                            }
                        ],
                        'keterngan:ntext',
                        'tanggal_berita',
                        // 'jumlah_uang',
                        [
                            'attribute' => 'jumlah_uang',
                            'format' => 'raw',
                            'value' => function ($model) {
                                if (!empty($model->jumlah_uang)) {
                                    return $model->jumlah_uang;
                                } else {
                                }
                            }
                        ],
                        // 'status_tunjangan',
                        [
                            'attribute' => 'status_tunjangan',
                            'format' => 'raw',
                            'value' => function ($model) {
                                if ($model->status_tunjangan == 0) {
                                    return "<p class='badge bg-grey'>Menunggu</P>";
                                } elseif ($model->status_tunjangan == 1) {
                                    return "<p class='badge bg-green'>Disetujui</P>";
                                } else {
                                    return "<p class='badge bg-red'>Ditolak</P>";
                                }
                            }
                        ]
                    ],
                ]) ?>

                <?php
                if ($model->status_tunjangan == 0) {

                    $role = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 26])->one();
                    if ($role) {
                    } else {
                ?>
                        <p>
                            <?= Html::a('Setujui', ['setujui', 'id' => $model->id_tunjangan], ['class' => 'btn btn-flat bg-green']) ?>
                            <?= Html::a('Tolak', ['tolak', 'id' => $model->id_tunjangan], ['class' => 'btn btn-flat bg-yellow']) ?>
                        </p>
                <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>

<?php if ($role) { ?>

    <?= Html::beginForm(['tunjangan/upload-buku-nikah'], 'post', ['enctype' => 'multipart/form-data']) ?>
    <?= Html::hiddenInput("id_tabel", $model->id_tunjangan) ?>
    <?= Html::hiddenInput("nama_tabel", "tunjangan_buku_nikah") ?>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>UPLOAD FOTO & DOKUMEN BUKU NIKAH</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class='btn btn-warning' type="file" name="foto" id="exampleInputFile"><br>
                                <b style="color: red;">Catatan:<br>- File harus bertype jpg, png, jpeg, excel, work, pdf<br>- Ukuran maksimal 2 MB.</b>
                            </td>
                            <td>
                                <?= Html::submitButton('Submit', ['class' => 'btn btn-success']) ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?= Html::endForm() ?>

    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>DOKUMEN PUBLIKASI :</th>
                        </tr>
                    </thead>
                </table>
                <?php foreach ($foto_buku_nikah as $data) { ?>
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="80%">
                                    <a target="_BLANK" href="/backend/web/upload/<?php echo $data->foto; ?>"><?php echo $data->foto; ?></a>
                                </th>
                                <th width="20%">
                                    <a href="index.php?r=tunjangan/view&aksi=hapus_buku_nikah&id=<?php echo $model->id_tunjangan; ?>&id_hapus=<?php echo $data->id_foto; ?>" onclick="return confirm('Anda yakin ingin menghapus?')"><img src='images/hapus.png' width='20'></a>
                                </th>
                            </tr>
                        </thead>
                    </table>
                <?php } ?>
            </div>
        </div>
    </div>


    <?= Html::beginForm(['tunjangan/upload-surat-kelahiran'], 'post', ['enctype' => 'multipart/form-data']) ?>
    <?= Html::hiddenInput("id_tabel", $model->id_tunjangan) ?>
    <?= Html::hiddenInput("nama_tabel", "tunjangan_surat_kelahiran") ?>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>UPLOAD FOTO & DOKUMEN SURAT KELAHIRAN</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class='btn btn-warning' type="file" name="foto" id="exampleInputFile"><br>
                                <b style="color: red;">Catatan:<br>- File harus bertype jpg, png, jpeg, excel, work, pdf<br>- Ukuran maksimal 2 MB.</b>
                            </td>
                            <td>
                                <?= Html::submitButton('Submit', ['class' => 'btn btn-success']) ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?= Html::endForm() ?>

    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>DOKUMEN PUBLIKASI :</th>
                        </tr>
                    </thead>
                </table>
                <?php foreach ($foto_surat_kelahiran as $data) { ?>
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="80%">
                                    <a target="_BLANK" href="/backend/web/upload/<?php echo $data->foto; ?>"><?php echo $data->foto; ?></a>
                                </th>
                                <th width="20%">
                                    <a href="index.php?r=tunjangan/view&aksi=hapus_surat_kelahiran&id=<?php echo $model->id_tunjangan; ?>&id_hapus=<?php echo $data->id_foto; ?>" onclick="return confirm('Anda yakin ingin menghapus?')"><img src='images/hapus.png' width='20'></a>
                                </th>
                            </tr>
                        </thead>
                    </table>
                <?php } ?>
            </div>
        </div>
    </div>


    <?= Html::beginForm(['tunjangan/upload-surat-kematian'], 'post', ['enctype' => 'multipart/form-data']) ?>
    <?= Html::hiddenInput("id_tabel", $model->id_tunjangan) ?>
    <?= Html::hiddenInput("nama_tabel", "tunjangan_surat_kematian") ?>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>UPLOAD FOTO & DOKUMEN SURAT KEMATIAN</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class='btn btn-warning' type="file" name="foto" id="exampleInputFile"><br>
                                <b style="color: red;">Catatan:<br>- File harus bertype jpg, png, jpeg, excel, work, pdf<br>- Ukuran maksimal 2 MB.</b>
                            </td>
                            <td>
                                <?= Html::submitButton('Submit', ['class' => 'btn btn-success']) ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?= Html::endForm() ?>

    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>DOKUMEN PUBLIKASI :</th>
                        </tr>
                    </thead>
                </table>
                <?php foreach ($foto_surat_kematian as $data) { ?>
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="80%">
                                    <a target="_BLANK" href="/backend/web/upload/<?php echo $data->foto; ?>"><?php echo $data->foto; ?></a>
                                </th>
                                <th width="20%">
                                    <a href="index.php?r=tunjangan/view&aksi=hapus_surat_kematian&id=<?php echo $model->id_tunjangan; ?>&id_hapus=<?php echo $data->id_foto; ?>" onclick="return confirm('Anda yakin ingin menghapus?')"><img src='images/hapus.png' width='20'></a>
                                </th>
                            </tr>
                        </thead>
                    </table>
                <?php } ?>
            </div>
        </div>
    </div>

<?php } ?>

<?php
$role_m = UserRole::find()->where(["id_login" => Yii::$app->user->id])->andWhere(["id_system_role" => 25])->one();

if ($role_m) { ?>
    <div class="box">
        <div class="box-header">
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>DOKUMEN PUBLIKASI :</th>
                        </tr>
                    </thead>
                </table>
                <?php foreach ($foto_buku_nikah as $data) { ?>
                    <h3>Dokumen Buku Nikah</h3>
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="80%">
                                    <a target="_BLANK" href="/backend/web/upload/<?php echo $data->foto; ?>"><?php echo $data->foto; ?></a>
                                </th>
                            </tr>
                        </thead>
                    </table>
                <?php } ?>
                <?php foreach ($foto_surat_kelahiran as $data) { ?>
                    <h3>Dokumen Surat Kelahiran</h3>
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="80%">
                                    <a target="_BLANK" href="/backend/web/upload/<?php echo $data->foto; ?>"><?php echo $data->foto; ?></a>
                                </th>
                            </tr>
                        </thead>
                    </table>
                <?php } ?>
                <?php foreach ($foto_surat_kematian as $data) { ?>
                    <h3>Dokumen Surat Kematian</h3>
                    <table class="table">
                        <thead>
                            <tr>
                                <th width="80%">
                                    <a target="_BLANK" href="/backend/web/upload/<?php echo $data->foto; ?>"><?php echo $data->foto; ?></a>
                                </th>
                            </tr>
                        </thead>
                    </table>
                <?php } ?>
            </div>
        </div>
    </div>
<?php } ?>