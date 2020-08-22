<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "mutasi".
 *
 * @property int $id_mutasi
 * @property int $id_karyawan
 * @property string $tanggal_mutasi
 * @property int $promosi
 * @property string $grade
 * @property string $posisi_awal
 * @property string $posisi_baru
 */
class Mutasi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'mutasi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'tanggal_mutasi', 'promosi', 'grade', 'posisi_baru'], 'required'],
            [['id_karyawan', 'promosi'], 'integer'],
            [['tanggal_mutasi'], 'safe'],
            [['grade'], 'string', 'max' => 50],
            [['posisi_awal', 'posisi_baru'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_mutasi' => 'Id Mutasi',
            'id_karyawan' => 'Id Karyawan',
            'tanggal_mutasi' => 'Tanggal Mutasi',
            'promosi' => 'Promosi',
            'grade' => 'Grade',
            'posisi_awal' => 'Posisi Awal',
            'posisi_baru' => 'Posisi Baru',
        ];
    }

    public function getKaryawan()
    {
        return $this->hasOne(Karyawan::className(), ["id_karyawan" => "id_karyawan"]);
    }
}
