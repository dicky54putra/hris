<?php

namespace backend\controllers;

use Yii;
use backend\models\Tunjangan;
use backend\models\Kontrak;
use backend\models\Mutasi;
use backend\models\Karyawan;
use backend\models\TunjanganSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use Mpdf\Mpdf;

/**
 * TunjanganController implements the CRUD actions for Tunjangan model.
 */
class TunjangankaryawanController extends Controller
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
     * Lists all Tunjangan models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Tunjangan();
        $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();
        $mut = Mutasi::find()->where(['id_karyawan' => $q->id_karyawan])->one();

        if ($model->load(Yii::$app->request->post())) {

            $model->id_karyawan = $q->id_karyawan;
            $model->id_mutasi = $mut->id_mutasi;

            $kon = Kontrak::find()->where(['id_karyawan' => $q->id_karyawan])->one();
            $model->status_karyawan = $kon->status_kontrak;
            // var_dump($model->id_mutasi);
            // die;
            $model->save();
            return $this->redirect(['tunjangan/view', 'id' => $model->id_tunjangan]);
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

        $searchModel = new TunjanganSearch();
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
     * Finds the Tunjangan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Tunjangan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        if (($model = Tunjangan::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
