<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Absensi;

/**
 * AbsensiSearch represents the model behind the search form of `backend\models\Absensi`.
 */
class AbsensiSearch extends Absensi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_absensi', 'id_karyawan', 'keterangan_absensi'], 'integer'],
            [['tanggal_absensi', 'nama_karyawan'], 'safe'],
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
        $query = Absensi::find()->joinWith("karyawan");

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
            'id_absensi' => $this->id_absensi,
            'nama_karyawan' => $this->id_karyawan,
            'tanggal_absensi' => $this->tanggal_absensi,
            'keterangan_absensi' => $this->keterangan_absensi,
        ]);

        return $dataProvider;
    }
}
