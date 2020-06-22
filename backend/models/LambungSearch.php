<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Lambung;

/**
 * LambungSearch represents the model behind the search form of `backend\models\Lambung`.
 */
class LambungSearch extends Lambung
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_lambung', 'id_pesawat', 'harla_yad', 'harla_lalu'], 'integer'],
            [['no_lambung', 'tanggal', 'status', 'fixediving', 'hasil', 'kedudukan', 'permasalahan', 'aksi', 'blade', 'warranty', 'selesai_warranty', 'crew', 'operasi', 'id_login', 'posisi', 'jenis_operasi', 'keterangan_umum', 'slu', 'blade', 'tanggal_temuan'], 'safe'],
            [['jt_pesud', 'jp', 'jt_total', 'jt_jatah'], 'number'],
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
        $query = Lambung::find();

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
            'id_lambung' => $this->id_lambung,
            // 'id_pesawat' => $this->id_pesawat,
            // 'id_login' => $this->id_login,
            'tanggal' => $this->tanggal,
            'jt_pesud' => $this->jt_pesud,
            'jp' => $this->jp,
            'jt_total' => $this->jt_total,
            'harla_yad' => $this->harla_yad,
            'harla_lalu' => $this->harla_lalu,
            'posisi' => $this->posisi,
            // 'sisa_jt' => $this->sisa_jt,
            // 'jt_harla' => $this->jt_harla,
            'blade' => $this->blade,
        ]);

        $query->andFilterWhere(['like', 'no_lambung', $this->no_lambung])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'permasalahan', $this->permasalahan])
            ->andFilterWhere(['like', 'aksi', $this->aksi])
            ->andFilterWhere(['like', 'login.nama', $this->id_login])
            ->andFilterWhere(['like', 'pesawat.nama_pesawat', $this->id_pesawat])
            ->andFilterWhere(['like', 'warranty', $this->warranty])
            ->andFilterWhere(['like', 'posisi', $this->posisi])
            ->andFilterWhere(['like', 'crew', $this->crew])
            ->andFilterWhere(['like', 'jenis_operasi', $this->jenis_operasi]);

        return $dataProvider;
    }

    public function searchDua($params, $id)
    {
        $query = Lambung::find()->where(['lambung.id_pesawat' => $id]);
        $query->joinWith("login");
        $query->joinWith("pesawat");
        // $query->joinWith(['login']);
        // $query->join('INNER JOIN', 'login', 'login.id_login = lambung.id_login');

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
            'id_lambung' => $this->id_lambung,
            // 'id_pesawat' => $this->id_pesawat,
            // 'id_login' => $this->id_login,
            'tanggal' => $this->tanggal,
            'jt_pesud' => $this->jt_pesud,
            'jp' => $this->jp,
            'jt_total' => $this->jt_total,
            'harla_yad' => $this->harla_yad,
            'harla_lalu' => $this->harla_lalu,
            'posisi' => $this->posisi,
            // 'sisa_jt' => $this->sisa_jt,
            // 'jt_harla' => $this->jt_harla,
            'blade' => $this->blade,
        ]);

        $query->andFilterWhere(['like', 'no_lambung', $this->no_lambung])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'permasalahan', $this->permasalahan])
            ->andFilterWhere(['like', 'aksi', $this->aksi])
            ->andFilterWhere(['like', 'login.nama', $this->id_login])
            ->andFilterWhere(['like', 'pesawat.nama_pesawat', $this->id_pesawat])
            ->andFilterWhere(['like', 'warranty', $this->warranty])
            ->andFilterWhere(['like', 'posisi', $this->posisi])
            ->andFilterWhere(['like', 'crew', $this->crew])
            ->andFilterWhere(['like', 'jenis_operasi', $this->jenis_operasi]);

        return $dataProvider;
    }
}
