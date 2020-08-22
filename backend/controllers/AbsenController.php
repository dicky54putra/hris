<?php

namespace backend\controllers;

use Yii;
use backend\models\Absensi;
use backend\models\AbsensiSearch;
use backend\models\KaryawanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * AbsensiController implements the CRUD actions for Absensi model.
 */
class AbsenController extends Controller
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

        $searchModel = new KaryawanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('absen', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
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
        return $this->redirect(['index']);
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
        return $this->redirect(['index']);
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
        return $this->redirect(['index']);
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
        return $this->redirect(['index']);
    }
}
