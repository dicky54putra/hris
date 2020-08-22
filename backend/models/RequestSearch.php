<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Request;

/**
 * RequestSearch represents the model behind the search form of `backend\models\Request`.
 */
class RequestSearch extends Request
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_request', 'id_karyawan', 'keperluan_request', 'status_request'], 'integer'],
            [['tanggal', 'keterangan_request'], 'safe'],
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
        $query = Request::find();

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
            'id_request' => $this->id_request,
            'id_karyawan' => $this->id_karyawan,
            'tanggal' => $this->tanggal,
            'keperluan_request' => $this->keperluan_request,
            'status_request' => $this->status_request,
        ]);

        $query->andFilterWhere(['like', 'keterangan_request', $this->keterangan_request]);

        return $dataProvider;
    }

    public function search_dua($params)
    {
        $query = Request::find()->where(['status_request' => 0]);

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
            'id_request' => $this->id_request,
            'id_karyawan' => $this->id_karyawan,
            'tanggal' => $this->tanggal,
            'keperluan_request' => $this->keperluan_request,
            'status_request' => $this->status_request,
        ]);

        $query->andFilterWhere(['like', 'keterangan_request', $this->keterangan_request]);

        return $dataProvider;
    }
}
