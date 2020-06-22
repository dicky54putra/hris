<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Pesawat;

/**
 * PesawatSearch represents the model behind the search form of `backend\models\Pesawat`.
 */
class PesawatSearch extends Pesawat
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pesawat'], 'integer'],
            [['nama_pesawat', 'model_pesawat', 'tipe_pesawat'], 'safe'],
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
        $query = Pesawat::find();

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
            'id_pesawat' => $this->id_pesawat,
        ]);

        $query->andFilterWhere(['like', 'nama_pesawat', $this->nama_pesawat])
            ->andFilterWhere(['like', 'model_pesawat', $this->model_pesawat])
            ->andFilterWhere(['like', 'tipe_pesawat', $this->tipe_pesawat]);

        return $dataProvider;
    }
}
