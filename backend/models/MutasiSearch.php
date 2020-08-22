<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Mutasi;

/**
 * MutasiSearch represents the model behind the search form of `backend\models\Mutasi`.
 */
class MutasiSearch extends Mutasi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_mutasi', 'id_karyawan', 'promosi'], 'integer'],
            [['tanggal_mutasi', 'grade', 'posisi_awal', 'posisi_baru'], 'safe'],
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
        $query = Mutasi::find();

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
            'id_mutasi' => $this->id_mutasi,
            'id_karyawan' => $this->id_karyawan,
            'tanggal_mutasi' => $this->tanggal_mutasi,
            'promosi' => $this->promosi,
        ]);

        $query->andFilterWhere(['like', 'grade', $this->grade])
            ->andFilterWhere(['like', 'posisi_awal', $this->posisi_awal])
            ->andFilterWhere(['like', 'posisi_baru', $this->posisi_baru]);

        return $dataProvider;
    }
}
