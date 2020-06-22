<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "setting".
 *
 * @property string $nama
 * @property string $konten
 */
class Setting extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'setting';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama', 'konten'], 'required'],
            [['konten'], 'string'],
            [['nama'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'nama' => 'Nama',
            'konten' => 'Konten',
        ];
    }
}
