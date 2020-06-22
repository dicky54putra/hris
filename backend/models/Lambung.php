<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "lambung".
 *
 * @property int $id_lambung
 * @property int $id_pesawat
 * @property string $no_lambung
 * @property string $tanggal
 * @property double $jt_pesud
 * @property double $jam_putar
 * @property double $jt_total
 * @property string $status
 * @property int $harla_yad
 * @property int $harla_lalu
 * @property string $permasalahan
 * @property string $aksi_yg_dilakukan
 * @property double $sisa_jt
 * @property double $jt_harla
 * @property string $blade
 * @property string $warranty
 * @property string $selesai_warranty
 * @property string $crew
 * @property string $operasi
 */
class Lambung extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'lambung';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pesawat', 'no_lambung', 'status', 'harla_lalu', 'aksi', 'blade', 'tanggal_temuan', 'slu', 'warranty', 'fixediving', 'kedudukan', 'jenis_operasi', 'crew', 'aksi', 'slu', 'tanggal', 'harla_yad'], 'required'],
            // [['no_lambung'], 'unique'],
            [['id_pesawat'], 'integer'],
            [['tanggal', 'blade', 'harla_lalu', 'tanggal_temuan', 'slu', 'status_dua'], 'safe'],
            [['jt_pesud', 'jt_total',], 'number'],
            [['no_lambung'], 'string', 'max' => 200],
            [['status'], 'string', 'max' => 50],
            [['permasalahan', 'aksi', 'warranty', 'crew', 'jenis_operasi'], 'string', 'max' => 255],
            [['keterangan_umum', 'hasil', 'posisi', 'id_login', 'jt_jatah', 'jt_pesud', 'jt_total', 'jp', 'permasalahan'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_lambung' => 'Id Lambung',
            'fixediving' => 'Fixediving',
            'pesawat.nama_pesawat' => 'Id Pesawat',
            'login.nama' => 'Yang Mengubah',
            'id_login' => 'Terakhir diupdate oleh',
            'no_lambung' => 'No Lambung',
            'tanggal' => 'Tanggal',
            'kedudukan' => 'Kedudukan',
            'sn_pesud' => 'S/N Pesud',
            'posisi' => 'Posisi',
            'jt_pesud' => 'Jam Terbang Pesud Hari Ini',
            'jp' => 'Jam Terbang Sisa',
            'jt_total' => 'Jam Terbang Total',
            'jt_jatah' => 'Total Diijinkan Jam Terbang',
            'status' => 'Status',
            'harla_yad' => 'Harla Yad',
            'harla_lalu' => 'Harla Lalu',
            'permasalahan' => 'Permasalahan',
            'tanggal_temuan' => 'Tanggal Temuan',
            'aksi' => 'Aksi',
            'hasil' => 'Hasil',
            'blade' => 'Timex Propeler/Blade',
            'slu' => 'Timex Slu',
            'warranty' => 'Warranty',
            'crew' => 'Crew',
            'jenis_operasi' => 'Jenis Operasi',
            'status_dua' => 'Status Setujui',
            'keterangan_umum' => 'Keterangan Umum',
        ];
    }

    public function getpesawat()
    {
        return $this->hasOne(Pesawat::className(), ['id_pesawat' => 'id_pesawat']);
    }

    public function getlogin()
    {
        return $this->hasOne(Login::className(), ['id_login' => 'id_login']);
    }
}
