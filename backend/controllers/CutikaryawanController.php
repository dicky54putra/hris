<?php

namespace backend\controllers;

use Yii;
use backend\models\Cuti;
use backend\models\Karyawan;
use backend\models\CutiSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use Mpdf\Mpdf;

/**
 * CutiController implements the CRUD actions for Cuti model.
 */
class CutikaryawanController extends Controller
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
            return $this->redirect(['cuti/view', 'id' => $model->id_cuti]);
        }

        return $this->render('index', [
            'model' => $model,
        ]);
    }

    public function actionRequest()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new CutiSearch();
        $dataProvider = $searchModel->search_kar(Yii::$app->request->queryParams);

        return $this->render('request', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionRequestPrint($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }
        $print =  $this->renderPartial('request_print', [
            // return $this->renderPartial('request_print', [
            'model' => $this->findModel($id),
        ]);

        $mPDF = new mPDF([
            'orientation' => 'P',
        ]);
        $mPDF->showImageErrors = true;
        $mPDF->writeHTML($print);
        $mPDF->Output();
        exit();
    }

    /**
     * Updates an existing Cuti model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    // public function actionUpdate($id)
    // {
    //     if (Yii::$app->user->isGuest) {
    //         header("Location: index.php");
    //         exit();
    //     }

    //     $model = $this->findModel($id);
    //     $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();

    //     if ($model->load(Yii::$app->request->post())) {
    //         $model->id_karyawan = $q->id_karyawan;
    //         // var_dump($model->id_karyawan);
    //         // die;
    //         $timeStart = strtotime($model->waktu_cuti_awal);
    //         $timeEnd = strtotime($model->waktu_cuti_akhir);

    //         $numHari = 1 + (date("m", $timeEnd) - date("m", $timeStart)) * 30;
    //         $numHari += date("d", $timeEnd) - date("d", $timeStart);
    //         $model->hak_cuti_diambil = $numHari;
    //         $model->hak_cuti_tersisa = $model->hak_cuti_tersisa - $model->hak_cuti_diambil;

    //         $model->save();
    //         return $this->redirect(['view', 'id' => $model->id_cuti]);
    //     }

    //     return $this->render('update', [
    //         'model' => $model,
    //     ]);
    // }

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

        if (($model = Cuti::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
