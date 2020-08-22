<?php

namespace backend\controllers;

use Yii;
use backend\models\Ijin;
use backend\models\Karyawan;
use backend\models\IjinSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use Mpdf\Mpdf;

/**
 * IjinController implements the CRUD actions for Ijin model.
 */
class IjinkaryawanController extends Controller
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

        $model = new Ijin();
        $q = Karyawan::find()->where(['nik_karyawan' => Yii::$app->user->identity->username])->limit(1)->one();
        if ($model->load(Yii::$app->request->post())) {
            $model->id_karyawan = $q->id_karyawan;
            // var_dump($model->id_karyawan);
            // die;
            $model->save();
            return $this->redirect(['ijin/view', 'id' => $model->id_ijin]);
        }

        return $this->render('index', [
            'model' => $model,
            'query' => $q
        ]);
    }

    public function actionRequest()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new IjinSearch();
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
