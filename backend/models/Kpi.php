<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kpi".
 *
 * @property int $id_kpi
 * @property string $aku
 * @property string $kpi
 * @property int $bobot_kpi
 * @property int $target
 * @property int $rat
 * @property double $skor
 * @property double $skor_akhir
 */
class Kpi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kpi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['aku', 'kpi', 'bobot_kpi', 'target', 'rat',], 'required'],
            [['bobot_kpi', 'target', 'rat'], 'integer'],
            [['skor', 'skor_akhir'], 'number'],
            [['aku'], 'string', 'max' => 200],
            [['kpi'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_kpi' => 'Id Kpi',
            'aku' => 'Area Kinerja Utama',
            'kpi' => 'Key Performance Indicators',
            'bobot_kpi' => 'Bobot Kpi',
            'target' => 'Target (%)',
            'rat' => 'Realisasi Akhir Tahun (%)',
            'skor' => 'Skor',
            'skor_akhir' => 'Skor Akhir',
        ];
    }
}
