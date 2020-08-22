<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use backend\models\Ijin;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\IjinSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Arsip';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ijin-index">


    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>
    <?= GridView::widget([
        'dataProvider' => $data_ijin,
        'filterModel' => $ijin_search,
        'columns' => [
            ['class' => 'kartik\grid\SerialColumn'],

            // 'id_ijin',
            'ipc',
            // 'tanggal_ijin',
            [
                'attribute' => 'tanggal_ijin',
                'format' => 'raw',
                'value' => function ($model) {
                    return date('D d-M-Y', strtotime($model->tanggal_ijin));
                }
            ],
            [
                'attribute' => 'id_karyawan',
                'label' => 'Nama Karyawan',
                'format' => 'raw',
                'value' => function ($model) {
                    if (!empty($model->karyawan->nama_karyawan)) {
                        return $model->karyawan->nama_karyawan;
                    }
                }
            ],
            'keperluan',
            // 'waktu_awal',
            [
                'attribute' => 'waktu_awal',
                'format' => 'raw',
                'value' => function ($model) {
                    return date('h:i A', strtotime($model->waktu_awal));
                }
            ],
            [
                'attribute' => 'waktu_akhir',
                'format' => 'raw',
                'value' => function ($model) {
                    return date('h:i A', strtotime($model->waktu_akhir));
                }
            ],
            // 'waktu_akhir',
            [
                'attribute' => 'status_ijin',
                'format' => 'raw',
                'label' => 'Status',
                'filter' => array(1 => 'Disetujui', 2 => 'Ditolak'),
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
            // [
            //     'class' => 'kartik\grid\ActionColumn',
            //     'template' => '{view}'
            // ],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        'toolbar' =>  [

            '{export}',
            '{toggleData}',
        ],
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        'export' => [
            'fontAwesome' => true
        ],
        'responsiveWrap' => false,
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => '<h2 class="panel-title"><i class="fa fa-plus-square"></i> Arsip Ijin</h2>',
            // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
    <br>
    <?= GridView::widget([
        'dataProvider' => $data_cuti,
        'filterModel' => $cuti_search,
        'columns' => [
            ['class' => 'kartik\grid\SerialColumn'],

            // 'id_cuti',
            [
                'attribute' => 'id_karyawan',
                'label' => 'Karyawan',
                'format' => 'raw',
                'value' => function ($model) {
                    if (!empty($model->karyawan->nama_karyawan)) {
                        return $model->karyawan->nama_karyawan;
                    }
                }
            ],
            'tanggal_pengajuan',
            'jenis_cuti',
            // 'hak_cuti_tersisa',
            //'hak_cuti_diambil',
            'waktu_cuti_awal',
            'waktu_cuti_akhir',
            'telepon',
            'keterangan_cuti:ntext',
            'diajukan_tanggal',
            'alasan_cuti_setuju:ntext',
            // 'status_cuti',
            [
                'attribute' => 'status_cuti',
                'format' => 'raw',
                'label' => 'Status',
                'filter' => array(1 => 'Disetujui', 2 => 'Ditolak'),
                'value' => function ($model) {
                    if ($model->status_cuti == 1) {
                        return "<p class='badge bg-green'>Disetujui</P>";
                    } else {
                        return "<p class='badge bg-red'>Ditolak</P>";
                    }
                }
            ]

            // [
            //     'class' => 'kartik\grid\ActionColumn',
            //     'template' => '{view}'
            // ],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        'toolbar' =>  [

            '{export}',
            '{toggleData}',
        ],
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        'export' => [
            'fontAwesome' => true
        ],
        'responsiveWrap' => false,
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => '<h2 class="panel-title"><i class="fa fa-water"></i> Arsip Cuti</h2>',
            // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
    <?= GridView::widget([
        'dataProvider' => $data_tunjangan,
        'filterModel' => $tunjangan_search,
        'columns' => [
            ['class' => 'kartik\grid\SerialColumn'],

            // 'id_tunjangan',
            // 'karyawan.nama_karyawan',
            [
                'attribute' => 'id_karyawan',
                'label' => 'Nama Karyawan',
                'format' => 'html',
                'value' => function ($model) {
                    if (!empty($model->karyawan->nama_karyawan)) {
                        return $model->karyawan->nama_karyawan;
                    }
                }
            ],
            [
                'attribute' => 'id_mutasi',
                'label' => 'Divisi',
                'format' => 'html',
                'value' => function ($model) {
                    if (!empty($model->mutasi->posisi_baru)) {
                        return $model->mutasi->posisi_baru;
                    }
                }
            ],
            // 'mutasi.posisi_baru',
            'perihal',
            // 'status_karyawan',
            [
                'attribute' => 'status_karyawan',
                'label' => 'Status Karyawan',
                'format' => 'html',
                'value' => function ($model) {
                    if ($model->status_karyawan) {
                        return "<p class='badge bg-green'> Pegawai Tetap</p>";
                    } else {
                        return "<p class='badge bg-gray'> Pegawai Kontrak</p>";
                    }
                }
            ],
            [
                'attribute' => 'dp_buku_nikah',
                'format' => 'html',
                'label' => 'Data Pendukung',
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

                    return $n . '<br>' . $kl . '<br>' . $km;
                    // return $model->status_tunjangan == 1
                }
            ],
            'keterngan:ntext',
            'tanggal_berita',
            'jumlah_uang',
            // 'status_tunjangan',
            [
                'attribute' => 'status_tunjangan',
                'format' => 'raw',
                'label' => 'Status',
                'filter' => array(1 => 'Disetujui', 2 => 'Ditolak'),
                'value' => function ($model) {
                    if ($model->status_tunjangan == 1) {
                        return "<p class='badge bg-green'>Disetujui</P> <br> <button type='button' class='badge bg-blue tunjangan' data-toggle='modal' data-target='#myModal' data-id='$model->id_tunjangan'>Isi Jumlah Uang</button>";
                    } else {
                        return "<p class='badge bg-red'>Ditolak</P>";
                    }
                }
            ]

            // [
            //     'class' => 'kartik\grid\ActionColumn',
            //     'template' => "{view}"
            // ],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        'toolbar' =>  [

            '{export}',
            '{toggleData}',
        ],
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        'export' => [
            'fontAwesome' => true
        ],
        'responsiveWrap' => false,
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => '<h2 class="panel-title"><i class="fa fa-receipt"></i> Arsip Tunjangan</h2>',
            // 'before' => Html::a('<i class="glyphicon glyphicon-plus"></i> Create', ['create'], ['class' => 'btn btn-success']),
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
    ]); ?>
</div>


!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- konten modal-->
        <div class="modal-content">
            <!-- heading modal -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Masukan Uang Tunjangan</h4>
            </div>
            <!-- body modal -->
            <?= Html::beginForm(['arsip/index', 'aksi' => 'save',], 'post') ?>
            <!-- <form action="hris/backend/web/index.php?r=arsip&aksi=save" method="post"> -->
            <div class="modal-body">
                <input type="hidden" name="id_tunj" id="id_tunj" class="form-control" placeholder="Contoh: 5000000">
                <input type="text" name="jumlah_uang" id="jumlah_uang" class="form-control" placeholder="Contoh: 5000000" autocomplete="off" required>
            </div>
            <!-- footer modal -->
            <div class="modal-footer">
                <button class="btn btn-success " type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
            </div>
            <!-- </form> -->
            <?= Html::endForm() ?>
        </div>
    </div>
</div>


<?php
$script = <<< JS
$('.tunjangan').on('click', function(){

    const id = $(this).data('id');

    $.ajax({
        url: 'http://hrd.klikgss.com/backend/web/index.php?r=arsip%2Ftunjangan',
        data: {id : id},
        method: 'get',
        dataType: 'json',
        success: function(data){
            $('#id_tunj').val(id);
            $('#jumlah_uang').val(data.jumlah_uang);
            // console.log(id);
            // console.log(data.jumlah_uang);
            // console.log(data.dp_buku_nikah);
        }
    })
})
 
JS;
$this->registerJs($script);
?>