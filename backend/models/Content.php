<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "content".
 *
 * @property int $id_content
 * @property string $judul
 * @property string $deskripsi
 * @property int $status_content
 */
class Content extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'content';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['judul', 'deskripsi', 'status_content'], 'required'],
            [['deskripsi'], 'string'],
            [['status_content'], 'integer'],
            [['judul'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_content' => 'Id Content',
            'judul' => 'Judul',
            'deskripsi' => 'Deskripsi',
            'status_content' => 'Status Content',
        ];
    }
}
