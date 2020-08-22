<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Tunjangan;
use Yii;

/**
 * TunjanganSearch represents the model behind the search form of `backend\models\Tunjangan`.
 */
class TunjanganSearch extends Tunjangan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_tunjangan', 'id_karyawan', 'id_mutasi', 'status_karyawan', 'jumlah_uang', 'status_tunjangan'], 'integer'],
            [['perihal', 'keterngan', 'tanggal_berita'], 'safe'],
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
        $query = Tunjangan::find()->where(['status_tunjangan' => 0]);

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
            'id_tunjangan' => $this->id_tunjangan,
            'id_karyawan' => $this->id_karyawan,
            'id_mutasi' => $this->id_mutasi,
            'status_karyawan' => $this->status_karyawan,
            // 'data_pendukung' => $this->data_pendukung,
            'tanggal_berita' => $this->tanggal_berita,
            'jumlah_uang' => $this->jumlah_uang,
            'status_tunjangan' => $this->status_tunjangan,
        ]);

        $query->andFilterWhere(['like', 'perihal', $this->perihal])
            ->andFilterWhere(['like', 'keterngan', $this->keterngan]);

        return $dataProvider;
    }

    public function search_arsip($params)
    {
        $query = Tunjangan::find()->where(['!=', 'status_tunjangan', 0]);

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
            'id_tunjangan' => $this->id_tunjangan,
            'id_karyawan' => $this->id_karyawan,
            'id_mutasi' => $this->id_mutasi,
            'status_karyawan' => $this->status_karyawan,
            // 'data_pendukung' => $this->data_pendukung,
            'tanggal_berita' => $this->tanggal_berita,
            'jumlah_uang' => $this->jumlah_uang,
            'status_tunjangan' => $this->status_tunjangan,
        ]);

        $query->andFilterWhere(['like', 'perihal', $this->perihal])
            ->andFilterWhere(['like', 'keterngan', $this->keterngan]);

        return $dataProvider;
    }

    public function search_kar($params)
    {
        $id_kar = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->one();
        $query = Tunjangan::find()->where(['!=', 'status_tunjangan', 0])->andWhere(['id_karyawan' => $id_kar->id_karyawan]);

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
            'id_tunjangan' => $this->id_tunjangan,
            'id_karyawan' => $this->id_karyawan,
            'id_mutasi' => $this->id_mutasi,
            'status_karyawan' => $this->status_karyawan,
            // 'data_pendukung' => $this->data_pendukung,
            'tanggal_berita' => $this->tanggal_berita,
            'jumlah_uang' => $this->jumlah_uang,
            'status_tunjangan' => $this->status_tunjangan,
        ]);

        $query->andFilterWhere(['like', 'perihal', $this->perihal])
            ->andFilterWhere(['like', 'keterngan', $this->keterngan]);

        return $dataProvider;
    }
}
