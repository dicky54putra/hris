<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Cuti;
use Yii;

/**
 * CutiSearch represents the model behind the search form of `backend\models\Cuti`.
 */
class CutiSearch extends Cuti
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_cuti', 'id_karyawan', 'hak_cuti_tersisa', 'hak_cuti_diambil', 'telepon', 'status_cuti'], 'integer'],
            [['tanggal_pengajuan', 'jenis_cuti', 'waktu_cuti_awal', 'waktu_cuti_akhir', 'keterangan_cuti', 'diajukan_tanggal', 'alasan_cuti_setuju'], 'safe'],
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
        $query = Cuti::find()->where(['status_cuti' => 0]);

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
            'id_cuti' => $this->id_cuti,
            'id_karyawan' => $this->id_karyawan,
            'tanggal_pengajuan' => $this->tanggal_pengajuan,
            'hak_cuti_tersisa' => $this->hak_cuti_tersisa,
            'hak_cuti_diambil' => $this->hak_cuti_diambil,
            'waktu_cuti_awal' => $this->waktu_cuti_awal,
            'waktu_cuti_akhir' => $this->waktu_cuti_akhir,
            'telepon' => $this->telepon,
            'diajukan_tanggal' => $this->diajukan_tanggal,
            'status_cuti' => $this->status_cuti,
        ]);

        $query->andFilterWhere(['like', 'jenis_cuti', $this->jenis_cuti])
            ->andFilterWhere(['like', 'keterangan_cuti', $this->keterangan_cuti])
            ->andFilterWhere(['like', 'alasan_cuti_setuju', $this->alasan_cuti_setuju]);

        return $dataProvider;
    }
    public function search_admin($params)
    {
        $query = Cuti::find()->where(['status_cuti' => 1]);

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
            'id_cuti' => $this->id_cuti,
            'id_karyawan' => $this->id_karyawan,
            'tanggal_pengajuan' => $this->tanggal_pengajuan,
            'hak_cuti_tersisa' => $this->hak_cuti_tersisa,
            'hak_cuti_diambil' => $this->hak_cuti_diambil,
            'waktu_cuti_awal' => $this->waktu_cuti_awal,
            'waktu_cuti_akhir' => $this->waktu_cuti_akhir,
            'telepon' => $this->telepon,
            'diajukan_tanggal' => $this->diajukan_tanggal,
            'status_cuti' => $this->status_cuti,
        ]);

        $query->andFilterWhere(['like', 'jenis_cuti', $this->jenis_cuti])
            ->andFilterWhere(['like', 'keterangan_cuti', $this->keterangan_cuti])
            ->andFilterWhere(['like', 'alasan_cuti_setuju', $this->alasan_cuti_setuju]);

        return $dataProvider;
    }

    public function search_arsip($params)
    {
        $query = Cuti::find()->where(['!=', 'status_cuti', 0]);

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
            'id_cuti' => $this->id_cuti,
            'id_karyawan' => $this->id_karyawan,
            'tanggal_pengajuan' => $this->tanggal_pengajuan,
            'hak_cuti_tersisa' => $this->hak_cuti_tersisa,
            'hak_cuti_diambil' => $this->hak_cuti_diambil,
            'waktu_cuti_awal' => $this->waktu_cuti_awal,
            'waktu_cuti_akhir' => $this->waktu_cuti_akhir,
            'telepon' => $this->telepon,
            'diajukan_tanggal' => $this->diajukan_tanggal,
            'status_cuti' => $this->status_cuti,
        ]);

        $query->andFilterWhere(['like', 'jenis_cuti', $this->jenis_cuti])
            ->andFilterWhere(['like', 'keterangan_cuti', $this->keterangan_cuti])
            ->andFilterWhere(['like', 'alasan_cuti_setuju', $this->alasan_cuti_setuju]);

        return $dataProvider;
    }

    public function search_kar($params)
    {
        $id_kar = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->one();
        $query = Cuti::find()->where(['!=', 'status_cuti', 0])->andWhere(['id_karyawan' => $id_kar->id_karyawan]);

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
            'id_cuti' => $this->id_cuti,
            'id_karyawan' => $this->id_karyawan,
            'tanggal_pengajuan' => $this->tanggal_pengajuan,
            'hak_cuti_tersisa' => $this->hak_cuti_tersisa,
            'hak_cuti_diambil' => $this->hak_cuti_diambil,
            'waktu_cuti_awal' => $this->waktu_cuti_awal,
            'waktu_cuti_akhir' => $this->waktu_cuti_akhir,
            'telepon' => $this->telepon,
            'diajukan_tanggal' => $this->diajukan_tanggal,
            'status_cuti' => $this->status_cuti,
        ]);

        $query->andFilterWhere(['like', 'jenis_cuti', $this->jenis_cuti])
            ->andFilterWhere(['like', 'keterangan_cuti', $this->keterangan_cuti])
            ->andFilterWhere(['like', 'alasan_cuti_setuju', $this->alasan_cuti_setuju]);

        return $dataProvider;
    }
}
