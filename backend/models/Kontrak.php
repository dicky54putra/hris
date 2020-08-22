<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kontrak".
 *
 * @property int $id_kontrak
 * @property int $id_karyawan
 * @property string $dari_tanggal
 * @property string $sampai_tanggal
 * @property int $status_kontrak
 */
class Kontrak extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kontrak';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'dari_tanggal', 'sampai_tanggal', 'status_kontrak'], 'required'],
            [['id_karyawan', 'status_kontrak'], 'integer'],
            [['dari_tanggal', 'sampai_tanggal'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_kontrak' => 'Id Kontrak',
            'id_karyawan' => 'Id Karyawan',
            'dari_tanggal' => 'Dari Tanggal',
            'sampai_tanggal' => 'Sampai Tanggal',
            'status_kontrak' => 'Status Kontrak',
        ];
    }

    public function getKaryawan()
    {
        return $this->hasOne(Karyawan::className(), ["id_karyawan" => "id_karyawan"]);
    }
}
