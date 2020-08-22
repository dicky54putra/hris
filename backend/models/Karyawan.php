<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "karyawan".
 *
 * @property int $id_karyawan
 * @property string $nama_karyawan
 * @property int $nik_karyawan
 * @property string $tempat_lahir_karyawan
 * @property string $tanggal_lahir_karyawan
 * @property string $alamat_karyawan
 * @property string $keluarga_karyawan
 * @property string $pedidikan_terahir
 */
class Karyawan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'karyawan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_karyawan', 'nik_karyawan', 'tempat_lahir_karyawan', 'tanggal_lahir_karyawan', 'alamat_karyawan', 'keluarga_karyawan', 'pedidikan_terahir'], 'required'],
            // [['nik_karyawan'], 'integer'],
            [['nik_karyawan'], 'unique'],
            [['tanggal_lahir_karyawan'], 'safe'],
            [['alamat_karyawan', 'keluarga_karyawan'], 'string'],
            [['nama_karyawan', 'pedidikan_terahir'], 'string', 'max' => 200],
            [['tempat_lahir_karyawan'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_karyawan' => 'Id Karyawan',
            'nama_karyawan' => 'Nama Karyawan',
            'nik_karyawan' => 'Nik Karyawan',
            'tempat_lahir_karyawan' => 'Tempat Lahir Karyawan',
            'tanggal_lahir_karyawan' => 'Tanggal Lahir Karyawan',
            'alamat_karyawan' => 'Alamat Karyawan',
            'keluarga_karyawan' => 'Keluarga Karyawan',
            'pedidikan_terahir' => 'Pedidikan Terahir',
        ];
    }
}
