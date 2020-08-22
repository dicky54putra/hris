<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Karyawan;
use Yii;

/**
 * KaryawanSearch represents the model behind the search form of `backend\models\Karyawan`.
 */
class KaryawanSearch extends Karyawan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_karyawan', 'nik_karyawan'], 'integer'],
            [['nama_karyawan', 'tempat_lahir_karyawan', 'tanggal_lahir_karyawan', 'alamat_karyawan', 'keluarga_karyawan', 'pedidikan_terahir'], 'safe'],
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
        $query = Karyawan::find();

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
            'id_karyawan' => $this->id_karyawan,
            'nik_karyawan' => $this->nik_karyawan,
            'tanggal_lahir_karyawan' => $this->tanggal_lahir_karyawan,
        ]);

        $query->andFilterWhere(['like', 'nama_karyawan', $this->nama_karyawan])
            ->andFilterWhere(['like', 'tempat_lahir_karyawan', $this->tempat_lahir_karyawan])
            ->andFilterWhere(['like', 'alamat_karyawan', $this->alamat_karyawan])
            ->andFilterWhere(['like', 'keluarga_karyawan', $this->keluarga_karyawan])
            ->andFilterWhere(['like', 'pedidikan_terahir', $this->pedidikan_terahir]);

        return $dataProvider;
    }
    public function searchOne($params)
    {
        $query = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1);

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

        // // grid filtering conditions
        // $query->andFilterWhere([
        //     'id_karyawan' => $this->id_karyawan,
        //     'nik_karyawan' => $this->nik_karyawan,
        //     'tanggal_lahir_karyawan' => $this->tanggal_lahir_karyawan,
        // ]);

        // $query->andFilterWhere(['like', 'nama_karyawan', $this->nama_karyawan])
        //     ->andFilterWhere(['like', 'tempat_lahir_karyawan', $this->tempat_lahir_karyawan])
        //     ->andFilterWhere(['like', 'alamat_karyawan', $this->alamat_karyawan])
        //     ->andFilterWhere(['like', 'keluarga_karyawan', $this->keluarga_karyawan])
        //     ->andFilterWhere(['like', 'pedidikan_terahir', $this->pedidikan_terahir]);

        return $dataProvider;
    }
}
