<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Lambung */

$this->title = 'Pesawat';
$subtitle = 'Detail Nomor Lambung: ' . $model->no_lambung . ' | Pesawat ' . $model->pesawat['nama_pesawat'];
$this->params['breadcrumbs'][] = ['label' => 'Lambung', 'url' => ['index']];
$this->params['breadcrumbs'][] = $subtitle;
\yii\web\YiiAsset::register($this);
?>
<div class="lambung-view">

    <h1><?= $subtitle ?></h1>
    <p>
        <?= Html::submitButton('Perbarui', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Hapus', ['delete', 'id' => $model->id_lambung], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>

        <?= Html::a('Kembali', ['pesawat/view', 'id' => $model->id_pesawat], ['class' => 'btn btn-warning']) ?>
    </p>

    <div class="box box-success">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            // fixediving
                            [
                                'atribute' => 'fixediving',
                                'label' => '',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "
                                    <select name='fixediving' class='form-control'>
                                    <option value='0' $model->fixediving == 0 ? 'selected : '' > Fixedriving </option>
                                    <option value='1' $model->fixediving == 0 ? 'selected : ''  > Rorary Wing </option>
                                    </select>
                                    ";
                                }
                            ],
                            // tanggal
                            [
                                'attribute' => 'tanggal',
                                'label' => 'Tgl',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='date' value='$model->tanggal' class='form-control'><br>
                                            <button type='submit' class='btn btn-primary'>Save</button>";
                                    // return "<button type='submit' class='btn btn-primary'>Save</button>";
                                },
                            ],
                            // kedudukan
                            [
                                'atribute' => 'kedudukan',
                                'label' => 'Kedudukan',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "
                                    <select name='fixediving' class='form-control'>
                                    <option value='0'> W1 </option>
                                    <option value='1'> W2 </option>
                                    <option value='2'> W3 </option>
                                    <option value='3'> W4 </option>
                                    </select>
                                    ";
                                }
                            ],
                            // sn pesud
                            [
                                'attribute' => 'sn_pesud',
                                'label' => 'Sn Pesud',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->sn_pesud' class='form-control'><br>";
                                }
                            ],
                            // posisi
                            [
                                'atribute' => 'posisi',
                                'label' => 'Posisi',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->posisi' class='form-control'><br>";
                                }
                            ],
                            // jt pesud
                            [
                                'attribute' => 'jt_pesud',
                                'label' => 'Jam Terbang Pesud',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='number' value='$model->jt_pesud' class='form-control'><br>";
                                }
                            ],
                            // jp
                            [
                                'attribute' => 'jp',
                                'label' => 'Jam Putar',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='number' disabled value='$model->jp' class='form-control'><br>";
                                }
                            ],
                            // jt total
                            [
                                'attribute' => 'jt_total',
                                'label' => 'Jam Terbang Total',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='number' disabled value='$model->jt_total' class='form-control'><br>";
                                }
                            ],
                            // status
                            [
                                'atribute' => 'status',
                                'label' => 'Status',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->status' class='form-control'><br>";
                                }
                            ],
                            // harla yad
                            [
                                'attribute' => 'harla_yad',
                                'label' => 'Harla Yad',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='number' value='$model->harla_yad' class='form-control'><br>";
                                }
                            ],
                            // harla lalu
                            [
                                'attribute' => 'harla_lalu',
                                'label' => 'Harla Lalu',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='number' value='$model->harla_lalu' class='form-control'><br>";
                                }
                            ],
                            // permasalahan
                            [
                                'attribute' => 'permasalahan',
                                'label' => 'Permasalahan',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    // return "<textare value='$model->permasalahan' class='form-control'><br>";
                                    return "<textarea class='form-control' name='permasalahan' id='' >$model->permasalahan</textarea>";
                                }
                            ],
                            // tanggal_temuan
                            [
                                'attribute' => 'tanggal_temuan',
                                'label' => 'Tanggal Temuan',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='date' value='$model->tanggal_temuan' class='form-control'><br>";
                                }
                            ],
                            // aksi
                            [
                                'atribute' => 'aksi',
                                'label' => 'Aksi',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->aksi' class='form-control'><br>";
                                }
                            ],
                            // hasil
                            [
                                'atribute' => 'hasil',
                                'label' => 'Hasil',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->hasil' class='form-control'><br>";
                                }
                            ],
                            // blade
                            [
                                'attribute' => 'blade',
                                'label' => 'Timexprop/Blade',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='date' value='$model->blade' class='form-control'><br>";
                                }
                            ],
                            //slu
                            [
                                'attribute' => 'slu',
                                'label' => 'Timexprop slu',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='date' value='$model->slu' class='form-control'><br>";
                                }
                            ],
                            // warranty
                            [
                                'atribute' => 'warranty',
                                'label' => 'Warranty',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->warranty' class='form-control'><br>";
                                }
                            ],
                            // crew
                            [
                                'atribute' => 'crew',
                                'label' => 'Crew',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->crew' class='form-control'><br>";
                                }
                            ],
                            // jenis operasi
                            [
                                'atribute' => 'jenis_operasi',
                                'label' => 'Jenis Operasi',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    return "<input type='text' value='$model->jenis_operasi' class='form-control'><br>";
                                }
                            ],
                            // status dua
                            [
                                'attribute' => 'status_dua',
                                'label' => 'Status',
                                'format'    => 'html',
                                'value' => function ($model) {
                                    return $model->status_dua == 0 ? "<span class='label bg-yellow'>Menunggu</button>" : $retVal = ($model->status_dua == 1) ? "<button class='label bg-green'>Disetujui</button>" : "<button class='label bg-red'>Cek Ulang</button>";
                                }
                            ],
                            // keterangan umum
                            [
                                'attribute' => 'keterangan_umum',
                                'label' => 'Keterangan Umum',
                                'format' => 'raw',
                                'value' => function ($model) {
                                    // return "<textare value='$model->keterangan_umum' class='form-control'><br>";
                                    return "<textarea class='form-control' name='keterangan_umum' id='' >$model->keterangan_umum</textarea>";
                                }
                            ],
                        ],
                    ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>