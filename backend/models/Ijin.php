<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "ijin".
 *
 * @property int $id_ijin
 * @property string $ipc
 * @property string $tanggal_ijin
 * @property int $id_karyawan
 * @property string $keperluan
 * @property string $waktu_awal
 * @property string $waktu_akhir
 * @property int $status_ijin
 */
class Ijin extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ijin';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ipc', 'tanggal_ijin', 'id_karyawan', 'keperluan', 'waktu_awal', 'waktu_akhir', 'status_ijin'], 'required'],
            [['tanggal_ijin', 'waktu_awal', 'waktu_akhir'], 'safe'],
            [['status_ijin'], 'integer'],
            [['ipc', 'keperluan'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_ijin' => 'Id Ijin',
            'ipc' => 'Surat Ijin / Ipc',
            'tanggal_ijin' => 'Tanggal Ijin',
            'id_karyawan' => 'Id Karyawan',
            'keperluan' => 'Keperluan',
            'waktu_awal' => 'Waktu Awal',
            'waktu_akhir' => 'Waktu Akhir',
            'status_ijin' => 'Status Ijin',
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
