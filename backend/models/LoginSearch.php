<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Login;

/**
 * LoginSearch represents the model behind the search form about `backend\models\Login`.
 */
class LoginSearch extends Login
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_login'], 'integer'],
            [['username', 'password', 'nama'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
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
        $query = Login::find()->where(['!=', 'password', 'cfcd208495d565ef66e7dff9f98764da'])->andWhere(['!=', 'id_login', '39']);
        $query->orderBy('id_login DESC');

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
            'id_login' => $this->id_login,
        ]);

        $query->andFilterWhere(['like', 'username', $this->username])
            ->andFilterWhere(['like', 'password', $this->password])
            ->andFilterWhere(['like', 'nama', $this->nama]);

        return $dataProvider;
    }
}
