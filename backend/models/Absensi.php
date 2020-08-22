<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "absensi".
 *
 * @property int $id_absensi
 * @property int $id_karyawan
 * @property string $tanggal_absensi
 * @property int $keterangan_absensi
 */
class Absensi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'absensi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'tanggal_absensi', 'keterangan_absensi'], 'required'],
            [['id_karyawan', 'keterangan_absensi'], 'integer'],
            [['tanggal_absensi'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_absensi' => 'Id Absensi',
            'id_karyawan' => 'Id Karyawan',
            'tanggal_absensi' => 'Tanggal Absensi',
            'keterangan_absensi' => 'Keterangan Absensi',
        ];
    }

    public function getKaryawan()
    {
        return $this->hasOne(Karyawan::className(), ["id_karyawan" => "id_karyawan"]);
    }
}
