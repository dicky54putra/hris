<?php

namespace backend\controllers;

use Yii;
use backend\models\Cuti;
use backend\models\Karyawan;
use backend\models\Kontrak;
use backend\models\Mutasi;
use backend\models\Absensi;
use backend\models\KaryawanSearch;
use backend\models\KaryawanDetailSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;


class DataDiriController extends Controller
{
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new KaryawanSearch();
        $dataProvider = $searchModel->searchOne(Yii::$app->request->queryParams);
        $model = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->one();
        $model_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $searchModel = new KaryawanDetailSearch();
        $id_karyawan = $model->id_karyawan;
        $model_training = $searchModel->search_v(Yii::$app->request->queryParams, $id_karyawan);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
            'model_kontrak' => $model_kontrak,
            'cek_kontrak' => $cek_kontrak,
            'model_mutasi' => $model_mutasi,
            'cek_mutasi' => $cek_mutasi,
            'model_absensi' => $model_absensi,
            'cek_absensi' => $cek_absensi,
            'model_training' => $model_training,
        ]);
    }

    public function actionPrintPribadi()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new KaryawanSearch();
        $dataProvider = $searchModel->searchOne(Yii::$app->request->queryParams);
        $model = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->one();

        return $this->render('p_pribadi', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
        ]);
    }

    public function actionPrintProfesional()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new KaryawanSearch();
        $dataProvider = $searchModel->searchOne(Yii::$app->request->queryParams);
        $model = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->one();
        $model_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->count();

        return $this->render('p_profesional', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
            'model_kontrak' => $model_kontrak,
            'cek_kontrak' => $cek_kontrak,
            'model_mutasi' => $model_mutasi,
            'cek_mutasi' => $cek_mutasi,
            'model_absensi' => $model_absensi,
            'cek_absensi' => $cek_absensi,
        ]);
    }
}
