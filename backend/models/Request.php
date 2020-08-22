<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "request".
 *
 * @property int $id_request
 * @property int $id_karyawan
 * @property string $tanggal
 * @property int $keperluan_request
 * @property string $keterangan_request
 */
class Request extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'request';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'tanggal', 'keperluan_request', 'keterangan_request'], 'required'],
            [['id_karyawan', 'keperluan_request'], 'integer'],
            [['tanggal'], 'safe'],
            [['keterangan_request'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_request' => 'Id Request',
            'id_karyawan' => 'Id Karyawan',
            'tanggal' => 'Tanggal',
            'keperluan_request' => 'Keperluan Request',
            'keterangan_request' => 'Keterangan Request',
        ];
    }

    public function getKaryawan()
    {
        return $this->hasOne(Karyawan::className(), ["id_karyawan" => "id_karyawan"]);
    }
}
