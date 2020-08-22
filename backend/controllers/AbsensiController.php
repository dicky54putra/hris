<?php

namespace backend\controllers;

use Yii;
use backend\models\Absensi;
use backend\models\AbsensiSearch;
use backend\models\KaryawanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use Mpdf\Mpdf;

/**
 * AbsensiController implements the CRUD actions for Absensi model.
 */
class AbsensiController extends Controller
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
     * Lists all Absensi models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $tanggal_awal = Yii::$app->request->post('tanggal_awal');
        $tanggal_akhir = Yii::$app->request->post('tanggal_akhir');

        $searchModel = new AbsensiSearch();
        // $searchModel = new KaryawanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'tanggal_awal' => $tanggal_awal,
            'tanggal_akhir' => $tanggal_akhir,
        ]);
    }

    public function actionRekapAbsensi()
    {
        $tanggal_awal = Yii::$app->request->post('tanggal_awal');
        $tanggal_akhir = Yii::$app->request->post('tanggal_akhir');
        $searchModel = new AbsensiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('rekap_absensi', [
            'tanggal_awal' => $tanggal_awal,
            'tanggal_akhir' => $tanggal_akhir,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionCetakRekapAbsensi()
    {
        $tanggal_awal = Yii::$app->request->post('tanggal_awal');
        $tanggal_akhir = Yii::$app->request->post('tanggal_akhir');
        $searchModel = new AbsensiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $pdf_content = $this->renderPartial('cetak_rekap', [
            'tanggal_awal' => $tanggal_awal,
            'tanggal_akhir' => $tanggal_akhir,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);

        $mPDF = new mPDF();
        $mPDF->writeHTML($pdf_content);
        $mPDF->Output();
        exit();
    }

    public function actionAbsen()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new KaryawanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('absen', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Absensi model.
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
     * Creates a new Absensi model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Absensi();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_absensi]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Absensi model.
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
            return $this->redirect(['view', 'id' => $model->id_absensi]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Absensi model.
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

    /**
     * Finds the Absensi model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Absensi the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        if (($model = Absensi::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }


    public function actionMasuk($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Absensi();
        $model->id_karyawan = $id;
        $model->tanggal_absensi =  date('Y-m-d');
        $model->keterangan_absensi =  0;
        // var_dump($model->tanggal_absensi);
        // die;
        $model->save(false);
        return $this->redirect(['absen']);
    }

    public function actionIzin($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Absensi();
        $model->id_karyawan = $id;
        $model->tanggal_absensi =  date('Y-m-d');
        $model->keterangan_absensi =  1;
        // var_dump($model->tanggal_absensi);
        // die;
        $model->save(false);
        return $this->redirect(['absen']);
    }

    public function actionCuti($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Absensi();
        $model->id_karyawan = $id;
        $model->tanggal_absensi =  date('Y-m-d');
        $model->keterangan_absensi =  2;
        // var_dump($model->tanggal_absensi);
        // die;
        $model->save(false);
        return $this->redirect(['absen']);
    }

    public function actionAlfa($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Absensi();
        $model->id_karyawan = $id;
        $model->tanggal_absensi =  date('Y-m-d');
        $model->keterangan_absensi =  3;
        // var_dump($model->tanggal_absensi);
        // die;
        $model->save(false);
        return $this->redirect(['absen']);
    }
}
