<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Kpi;

/**
 * KpiSearch represents the model behind the search form of `backend\models\Kpi`.
 */
class KpiSearch extends Kpi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_kpi', 'bobot_kpi', 'target', 'rat'], 'integer'],
            [['aku', 'kpi'], 'safe'],
            [['skor', 'skor_akhir'], 'number'],
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
        $query = Kpi::find();

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
            'id_kpi' => $this->id_kpi,
            'bobot_kpi' => $this->bobot_kpi,
            'target' => $this->target,
            'rat' => $this->rat,
            'skor' => $this->skor,
            'skor_akhir' => $this->skor_akhir,
        ]);

        $query->andFilterWhere(['like', 'aku', $this->aku])
            ->andFilterWhere(['like', 'kpi', $this->kpi]);

        return $dataProvider;
    }
}
