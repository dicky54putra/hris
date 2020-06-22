<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "pesawat".
 *
 * @property int $id_pesawat
 * @property string $nama_pesawat
 * @property string $model_pesawat
 * @property string $tipe_pesawat
 */
class Pesawat extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pesawat';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_pesawat', 'model_pesawat', 'tipe_pesawat'], 'required'],
            [['nama_pesawat', 'model_pesawat', 'tipe_pesawat'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_pesawat' => 'Id Pesawat',
            'nama_pesawat' => 'Nama Pesawat',
            'model_pesawat' => 'Model Pesawat',
            'tipe_pesawat' => 'Tipe Pesawat',
            'status_pesawat' => 'Status Pesawat',
        ];
    }
}
