<?php

namespace backend\controllers;

use Yii;
use backend\models\Pesawat;
use backend\models\PesawatSearch;
use backend\models\LambungSearch;
use backend\models\Lambung;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * PesawatController implements the CRUD actions for Pesawat model.
 */
class PesawatController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Pesawat models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $searchModel = new PesawatSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        // $lambung = Lambung::find()->where(['status_dua' => 0])->count();
        $this->view->title = 'Pesawat';

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            // 'lambung' => Lambung::find()->where(['id_pesawat' => 5])->andWhere(['status_dua' => 0])->count(),
        ]);
    }



    /**
     * Displays a single Pesawat model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $searchModel = new LambungSearch();
        $dataProvider = $searchModel->searchDua(Yii::$app->request->queryParams, $id);
        $query = Lambung::find()->where(['id_pesawat' => $id])->count();

        return $this->render('view', [
            'model' => $this->findModel($id),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'query' => $query
        ]);
    }

    /**
     * Creates a new Pesawat model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $model = new Pesawat();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    public function actionSetujui($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $model = Pesawat::find()->where(['id_pesawat' => $id])->one();
        $model->save(false);

        $setujui = Lambung::find()->where(['id_pesawat' => $id])->andWhere(['status_dua' => 0])->all();

        foreach ($setujui as $key => $value) {
            $value->status_dua = 1;
            $value->save(false);
        }

        Yii::$app->session->setFlash("success", "Perubahan lambung telah disetujui");
        return $this->redirect(['view', 'id' => $id]);
    }

    public function actionSetuju()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $setuju = Pesawat::find()->Where(['status_pesawat' => 0])->all();
        // var_dump($model);
        // die;

        foreach ($setuju as $key => $value) {
            $value->status_pesawat = 1;
            $value->save(false);
        }

        Yii::$app->session->setFlash("success", "Perubahan lambung telah disetujui");
        return $this->redirect(['index']);
    }

    public function actionCek($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        if (is_array(Yii::$app->request->post("selection"))) {
            $update = Lambung::find()->where(["in", "id_lambung", Yii::$app->request->post("selection")])->all();

            foreach ($update as $key => $value) {
                $value->status_dua = 2;
                $value->save(false);
            }
        }

        Yii::$app->session->setFlash("sukses", "Perubahan Berhasil lambung ditolak, operator akan mengecek lagi!");
        return $this->redirect(['view', 'id' => $id]);
    }

    public function actionCekk()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        if (is_array(Yii::$app->request->post("selection"))) {
            $update = Pesawat::find()->where(["in", "id_pesawat", Yii::$app->request->post("selection")])->all();

            foreach ($update as $key => $value) {
                $value->status_pesawat = 2;
                $value->save(false);
            }
        }

        Yii::$app->session->setFlash("success", "Perubahan Berhasil lambung ditolak, operator akan mengecek lagi!");
        return $this->redirect(['index']);
    }

    /**
     * Updates an existing Pesawat model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
            $model->status_pesawat = 0;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id_pesawat]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Pesawat model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Pesawat model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Pesawat the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Pesawat::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
