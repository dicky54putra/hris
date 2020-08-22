<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Training;

/**
 * TrainingSearch represents the model behind the search form of `backend\models\Training`.
 */
class TrainingSearch extends Training
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_training'], 'integer'],
            [['judul_training', 'waktu_training', 'sertifikat_training', 'penyelenggara_training'], 'safe'],
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
        $query = Training::find();

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
            'id_training' => $this->id_training,
            'waktu_training' => $this->waktu_training,
        ]);

        $query->andFilterWhere(['like', 'judul_training', $this->judul_training])
            ->andFilterWhere(['like', 'sertifikat_training', $this->sertifikat_training])
            ->andFilterWhere(['like', 'penyelenggara_training', $this->penyelenggara_training]);

        return $dataProvider;
    }
}
