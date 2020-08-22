<?php

namespace backend\controllers;

use Yii;
use backend\models\Kontrak;
use backend\models\Karyawan;
use backend\models\KontrakSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * KontrakController implements the CRUD actions for Kontrak model.
 */
class KontrakController extends Controller
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
     * Lists all Kontrak models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new KontrakSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Kontrak model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Kontrak model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        // $id_karyawan = $_GET['id_karyawan'];
        $model = new Kontrak();

        if ($model->load(Yii::$app->request->post())) {

            $karyawan = Karyawan::find()->where(['id_karyawan' => $model->id_karyawan])->one();
            $karyawan->status_kontrak = 1;
            $karyawan->save(false);

            $model->save();
            return $this->redirect(['view', 'id' => $model->id_kontrak]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Kontrak model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_kontrak]);
        }
        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Kontrak model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);

        $karyawan = Karyawan::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $karyawan->status_kontrak = 0;
        $karyawan->save(false);

        $model->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Kontrak model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Kontrak the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        if (($model = Kontrak::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
