<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tunjangan".
 *
 * @property int $id_tunjangan
 * @property int $id_karyawan
 * @property int $id_mutasi
 * @property string $perihal
 * @property int $status_karyawan
 * @property string $keterngan
 * @property string $tanggal_berita
 * @property int $jumlah_uang
 * @property int $status_tunjangan
 */
class Tunjangan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tunjangan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'perihal', 'status_karyawan', 'keterngan', 'tanggal_berita', 'status_tunjangan'], 'required'],
            [['status_tunjangan', 'dp_buku_nikah', 'dp_surat_kelahiran', 'dp_surat_kematian'], 'integer'],
            [['keterngan', 'foto_surat_kelahiran', 'foto_surat_kematian', 'foto_buku_nikah'], 'string'],
            [['tanggal_berita'], 'safe'],
            [['perihal'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_tunjangan' => 'Id Tunjangan',
            'id_karyawan' => 'Id Karyawan',
            'id_mutasi' => 'Id Mutasi',
            'perihal' => 'Perihal',
            'status_karyawan' => 'Status Karyawan',
            'dp_buku_nikah' => 'Foto Copy Buku Nikah',
            'dp_surat_kelahiran' => 'Foto Copy Surat Kelahiran',
            'dp_surat_kematian' => 'Foto Copy Surat Kematian',
            'foto_buku_nikah' => 'Foto Buku Nikah',
            'foto_surat_kelahiran' => 'Foto Surat Kelahiran',
            'foto_surat_kematian' => 'Foto Suran Kematian',
            'keterngan' => 'Keterngan',
            'tanggal_berita' => 'Tanggal Berita',
            'jumlah_uang' => 'Jumlah Uang',
            'status_tunjangan' => 'Status Tunjangan',
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
