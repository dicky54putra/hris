<?php

namespace backend\controllers;

use Yii;
use backend\models\Cuti;
use backend\models\Karyawan;
use backend\models\CutiSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CutiController implements the CRUD actions for Cuti model.
 */
class CutiController extends Controller
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
     * Lists all Cuti models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new CutiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionAdminpage()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new CutiSearch();
        $dataProvider = $searchModel->search_admin(Yii::$app->request->queryParams);

        return $this->render('admin-page', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Cuti model.
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
     * Creates a new Cuti model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Cuti();
        $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();

        if ($model->load(Yii::$app->request->post())) {

            $model->id_karyawan = $q->id_karyawan;
            // var_dump($model->id_karyawan);
            // die;
            $timeStart = strtotime($model->waktu_cuti_awal);
            $timeEnd = strtotime($model->waktu_cuti_akhir);

            $numHari = 1 + (date("m", $timeEnd) - date("m", $timeStart)) * 30;
            $numHari += date("d", $timeEnd) - date("d", $timeStart);
            $model->hak_cuti_diambil = $numHari;
            $model->hak_cuti_tersisa = $model->hak_cuti_tersisa - $model->hak_cuti_diambil;
            $model->diajukan_tanggal = '0000-00-00';
            $model->alasan_cuti_setuju = NULL;
            // var_dump($model->hak_cuti_diambil);
            // die;
            $model->save(false);
            return $this->redirect(['view', 'id' => $model->id_cuti]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Cuti model.
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
            $timeStart = strtotime($model->waktu_cuti_awal);
            $timeEnd = strtotime($model->waktu_cuti_akhir);

            $numHari = 1 + (date("m", $timeEnd) - date("m", $timeStart)) * 30;
            $numHari += date("d", $timeEnd) - date("d", $timeStart);
            $model->hak_cuti_diambil = $numHari;
            $model->hak_cuti_tersisa = $model->hak_cuti_tersisa - $model->hak_cuti_diambil;

            $model->save();
            return $this->redirect(['view', 'id' => $model->id_cuti]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Cuti model.
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

        if ($model->load(Yii::$app->request->post())) {

            $model->status_cuti = 1;
            // var_dump($model->status_cuti);
            // die;
            $model->save(false);
            return $this->redirect(['view', 'id' => $model->id_cuti]);
        }

        return $this->render('setujui', [
            'model' => $model
        ]);
    }

    public function actionTolak($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);

        $model->status_cuti = 2;
        $model->save();
        Yii::$app->session->setFlash("danger", "Request cuti dari karyawan berhasil ditolak.");
        return $this->redirect(['view', 'id' => $model->id_cuti]);


        // return $this->render('update', [
        //     'model' => $model,
        // ]);
    }

    /**
     * Finds the Cuti model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Cuti the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        if (($model = Cuti::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
