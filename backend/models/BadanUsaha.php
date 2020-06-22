<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "badan_usaha".
 *
 * @property int $id_badan_usaha
 * @property string $badan_usaha
 */
class BadanUsaha extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'badan_usaha';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['badan_usaha'], 'required'],
            [['badan_usaha'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_badan_usaha' => 'Id Badan Usaha',
            'badan_usaha' => 'Badan Usaha',
        ];
    }
}
