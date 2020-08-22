<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Kontrak;

/**
 * KontrakSearch represents the model behind the search form of `backend\models\Kontrak`.
 */
class KontrakSearch extends Kontrak
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_kontrak', 'id_karyawan', 'status_kontrak'], 'integer'],
            [['dari_tanggal', 'sampai_tanggal'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Kontrak::find()->where(['status_kontrak' => 0]);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_kontrak' => $this->id_kontrak,
            'id_karyawan' => $this->id_karyawan,
            'dari_tanggal' => $this->dari_tanggal,
            'sampai_tanggal' => $this->sampai_tanggal,
            'status_kontrak' => $this->status_kontrak,
        ]);

        return $dataProvider;
    }
}
