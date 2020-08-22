<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "karyawan_detail".
 *
 * @property int $id_karyawan_detail
 * @property int $id_karyawan
 * @property int $id_training
 */
class KaryawanDetail extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'karyawan_detail';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'id_training'], 'required'],
            [['id_karyawan', 'id_training'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_karyawan_detail' => 'Id Karyawan Detail',
            'id_karyawan' => 'Id Karyawan',
            'id_training' => 'Id Training',
        ];
    }

    public function getKaryawan()
    {
        return $this->hasOne(Karyawan::className(), ["id_karyawan" => "id_karyawan"]);
    }

    public function getTraining()
    {
        return $this->hasOne(Training::className(), ["id_training" => "id_training"]);
    }
}
