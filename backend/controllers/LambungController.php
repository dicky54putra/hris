<?php

namespace backend\controllers;

use Yii;
use backend\models\Lambung;
use backend\models\LambungSearch;
use backend\models\Pesawat;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * LambungController implements the CRUD actions for Lambung model.
 */
class LambungController extends Controller
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
     * Lists all Lambung models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $searchModel = new LambungSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        // $lambung = Login::find()->where(['id_login' => ])

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Lambung model.
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
     * Creates a new Lambung model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Lambung();
        $model->id_pesawat = $_GET['id'];
        $model->id_login = Yii::$app->user->identity->id_login;
        $model->tanggal = date('Y-m-d');
        $model->jt_total = 0;
        $model->jt_jatah = 0;
        $model->jt_pesud = 0;

        if ($model->load(Yii::$app->request->post())) {

            $cek_lambung = Lambung::find()->where(['no_lambung' => $model->no_lambung])->andWhere(['id_pesawat' => $model->id_pesawat])->count();

            if ($cek_lambung == 1) {
                # code...
                Yii::$app->session->setFlash("danger", "No Lambung Sudah ada! silahkan gunakan no Lambung lain");
                return $this->redirect(['create', 'id' => $model->id_pesawat]);
            } else {
                # code...
                $model->jt_total = $model->jt_total + $model->jt_pesud;
                $model->jp = $model->jt_jatah - $model->jt_total;
                $model->save(FALSE);

                return $this->redirect(['pesawat/view', 'id' => $model->id_pesawat]);
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Lambung model.
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
        $model->id_login = Yii::$app->user->identity->id_login;
        $r = 'readonly';

        if ($model->load(Yii::$app->request->post())) {
            $model->jt_total = $model->jt_total + $model->jt_pesud;
            $model->jp = $model->jt_jatah - $model->jt_total;
            $model->status_dua = 0;
            $model->save(FALSE);
            return $this->redirect(['pesawat/view', 'id' => $model->id_pesawat]);
        }


        return $this->render('update', [
            'model' => $model,
            'readonly' => $r,
        ]);
    }

    /**
     * Deletes an existing Lambung model.
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
        $model->delete();

        return $this->redirect(['pesawat/view', 'id' => $model->id_pesawat]);
    }

    /**
     * Finds the Lambung model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Lambung the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Lambung::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
