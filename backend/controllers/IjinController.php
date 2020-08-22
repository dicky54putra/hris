<?php

namespace backend\controllers;

use Yii;
use backend\models\Ijin;
use backend\models\Karyawan;
use backend\models\IjinSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * IjinController implements the CRUD actions for Ijin model.
 */
class IjinController extends Controller
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
     * Lists all Ijin models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new IjinSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Ijin model.
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
     * Creates a new Ijin model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Ijin();
        $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();
        if ($model->load(Yii::$app->request->post())) {
            $model->id_karyawan = $q->id_karyawan;
            // var_dump($model->id_karyawan);
            // die;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id_ijin]);
        }

        return $this->render('create', [
            'model' => $model,
            'query' => $q
        ]);
    }

    /**
     * Updates an existing Ijin model.
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

        $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();
        if ($model->load(Yii::$app->request->post())) {
            $model->id_karyawan = $q->id_karyawan;
            // var_dump($model->id_karyawan);
            // die;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id_ijin]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Ijin model.
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

        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionSetujui($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);

        $model->status_ijin = 1;
        $model->save();
        Yii::$app->session->setFlash("success", "Request ijin dari karyawan berhasil disetujui.");
        return $this->redirect(['view', 'id' => $model->id_ijin]);


        // return $this->render('update', [
        //     'model' => $model,
        // ]);
    }

    public function actionTolak($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);

        $model->status_ijin = 2;
        $model->save();
        Yii::$app->session->setFlash("danger", "Request ijin dari karyawan berhasil ditolak.");
        return $this->redirect(['view', 'id' => $model->id_ijin]);


        // return $this->render('update', [
        //     'model' => $model,
        // ]);
    }

    /**
     * Finds the Ijin model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Ijin the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        if (($model = Ijin::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
