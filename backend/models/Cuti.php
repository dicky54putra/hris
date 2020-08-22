<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "cuti".
 *
 * @property int $id_cuti
 * @property int $id_karyawan
 * @property string $tanggal_pengajuan
 * @property string $jenis_cuti
 * @property int $hak_cuti_tersisa
 * @property int $hak_cuti_diambil
 * @property string $waktu_cuti_awal
 * @property string $waktu_cuti_akhir
 * @property int $telepon
 * @property string $keterangan_cuti
 * @property string $diajukan_tanggal
 * @property string $alasan_cuti_setuju
 * @property int $status_cuti
 */
class Cuti extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cuti';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'tanggal_pengajuan', 'jenis_cuti', 'hak_cuti_tersisa', 'waktu_cuti_awal', 'waktu_cuti_akhir', 'telepon', 'keterangan_cuti', 'status_cuti'], 'required'],
            [['hak_cuti_tersisa', 'hak_cuti_diambil', 'telepon', 'status_cuti'], 'integer'],
            [['tanggal_pengajuan', 'waktu_cuti_awal', 'waktu_cuti_akhir', 'diajukan_tanggal', 'diajukan_tanggal', 'alasan_cuti_setuju'], 'safe'],
            [['keterangan_cuti', 'alasan_cuti_setuju'], 'string'],
            [['jenis_cuti'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_cuti' => 'Id Cuti',
            'id_karyawan' => 'Id Karyawan',
            'tanggal_pengajuan' => 'Tanggal Pengajuan',
            'jenis_cuti' => 'Jenis Cuti',
            'hak_cuti_tersisa' => 'Hak Cuti Tersisa',
            'hak_cuti_diambil' => 'Hak Cuti Diambil',
            'waktu_cuti_awal' => 'Waktu Cuti Awal',
            'waktu_cuti_akhir' => 'Waktu Cuti Akhir',
            'telepon' => 'Telepon',
            'keterangan_cuti' => 'Keterangan Cuti',
            'diajukan_tanggal' => 'Diajukan Tanggal',
            'alasan_cuti_setuju' => 'Alasan Cuti Setuju',
            'status_cuti' => 'Status Cuti',
        ];
    }

    public function getKaryawan()
    {
        return $this->hasOne(Karyawan::className(), ["id_karyawan" => "id_karyawan"]);
    }

    public function getMutasi()
    {
        return $this->hasOne(Mutasi::className(), ["id_karyawan" => "id_karyawan"]);
    }
}
