<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "training".
 *
 * @property int $id_training
 * @property string $judul_training
 * @property string $waktu_training
 * @property string $sertifikat_training
 * @property string $penyelenggara_training
 */
class Training extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'training';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['judul_training', 'waktu_training', 'sertifikat_training', 'penyelenggara_training'], 'required'],
            [['waktu_training'], 'safe'],
            [['judul_training', 'sertifikat_training', 'penyelenggara_training'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'judul_training' => 'Judul Training',
            'waktu_training' => 'Waktu Training',
            'sertifikat_training' => 'Sertifikat Training',
            'penyelenggara_training' => 'Penyelenggara Training',
        ];
    }
}
