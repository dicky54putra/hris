<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Ijin;
use Yii;

/**
 * IjinSearch represents the model behind the search form of `backend\models\Ijin`.
 */
class IjinSearch extends Ijin
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_ijin', 'id_karyawan', 'status_ijin'], 'integer'],
            [['ipc', 'tanggal_ijin', 'keperluan', 'waktu_awal', 'waktu_akhir'], 'safe'],
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
        $query = Ijin::find()->where(['status_ijin' => 0]);

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
            'id_ijin' => $this->id_ijin,
            'tanggal_ijin' => $this->tanggal_ijin,
            'id_karyawan' => $this->id_karyawan,
            'waktu_awal' => $this->waktu_awal,
            'waktu_akhir' => $this->waktu_akhir,
            'status_ijin' => $this->status_ijin,
        ]);

        $query->andFilterWhere(['like', 'ipc', $this->ipc])
            ->andFilterWhere(['like', 'keperluan', $this->keperluan]);

        return $dataProvider;
    }

    public function search_arsip($params)
    {
        $query = Ijin::find()->where(['!=', 'status_ijin', 0]);

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
            'id_ijin' => $this->id_ijin,
            'tanggal_ijin' => $this->tanggal_ijin,
            'id_karyawan' => $this->id_karyawan,
            'waktu_awal' => $this->waktu_awal,
            'waktu_akhir' => $this->waktu_akhir,
            'status_ijin' => $this->status_ijin,
        ]);

        $query->andFilterWhere(['like', 'ipc', $this->ipc])
            ->andFilterWhere(['like', 'keperluan', $this->keperluan]);

        return $dataProvider;
    }

    public function search_kar($params)
    {
        $id_kar = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->one();
        $query = Ijin::find()->where(['!=', 'status_ijin', 0])->andWhere(['id_karyawan' => $id_kar->id_karyawan]);

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
            'id_ijin' => $this->id_ijin,
            'tanggal_ijin' => $this->tanggal_ijin,
            'id_karyawan' => $this->id_karyawan,
            'waktu_awal' => $this->waktu_awal,
            'waktu_akhir' => $this->waktu_akhir,
            'status_ijin' => $this->status_ijin,
        ]);

        $query->andFilterWhere(['like', 'ipc', $this->ipc])
            ->andFilterWhere(['like', 'keperluan', $this->keperluan]);

        return $dataProvider;
    }
}
