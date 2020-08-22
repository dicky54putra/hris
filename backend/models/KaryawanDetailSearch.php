<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\KaryawanDetail;

/**
 * KaryawanDetailSearch represents the model behind the search form of `backend\models\KaryawanDetail`.
 */
class KaryawanDetailSearch extends KaryawanDetail
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan_detail', 'id_karyawan', 'id_training'], 'integer'],
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
        $query = KaryawanDetail::find();

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
            'id_karyawan_detail' => $this->id_karyawan_detail,
            'id_karyawan' => $this->id_karyawan,
            'id_training' => $this->id_training,
        ]);

        return $dataProvider;
    }

    public function search_v($params, $id_karyawan)
    {
        $query = KaryawanDetail::find();
        $query->joinWith('training');
        $query->where(['id_karyawan' => $id_karyawan]);

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
            'id_karyawan_detail' => $this->id_karyawan_detail,
            'id_karyawan' => $this->id_karyawan,
            'id_training' => $this->id_training,
        ]);

        return $dataProvider;
    }
}
