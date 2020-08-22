<?php

namespace backend\controllers;

use backend\models\Absensi;
use backend\models\Cuti;
use Yii;
use backend\models\Karyawan;
use backend\models\Login;
use backend\models\Mutasi;
use backend\models\Kontrak;
use backend\models\Userrole;
use backend\models\KaryawanSearch;
use backend\models\KaryawanDetailSearch;
use backend\models\Tunjangan;
use backend\models\KaryawanDetail;
use backend\models\Ijin;
use yii\console\ExitCode;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use Mpdf\Mpdf;

/**
 * KaryawanController implements the CRUD actions for Karyawan model.
 */
class KaryawanController extends Controller
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
     * Lists all Karyawan models.
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

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionDataPrint()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }
        $data = Karyawan::find()->all();

        $print =  $this->renderPartial('data_print', [
            // return $this->renderPartial('request_print', [
            // 'model' => $this->findModel($id),
            'data' => $data,
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
     * Displays a single Karyawan model.
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

        $model = $this->findModel($id);
        $addrole = new Userrole();
        $login = Login::find()->where(['username' => $model->nik_karyawan])->one();

        return $this->render('view', [
            'model' => $model,
            'login' => $login,
            'addrole' => $addrole,
        ]);
    }

    public function actionRole($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);
        $addrole = new Userrole();
        $login = Login::find()->where(['username' => $model->nik_karyawan])->one();

        $addrole->id_login = $login->id_login;
        $addrole->id_system_role = 26;

        // var_dump($addrole->id_login, $addrole->id_system_role);
        // die;
        $addrole->save();
        return $this->redirect(['vieww', 'id' => $id]);
    }

    public function actionVieww($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);
        $login = Login::find()->where(['username' => $model->nik_karyawan])->one();
        $model_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $cek_training = KaryawanDetail::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $searchModel = new KaryawanDetailSearch();
        $id_karyawan = $model->id_karyawan;
        $model_training = $searchModel->search_v(Yii::$app->request->queryParams, $id_karyawan);

        return $this->render('vieww', [
            'model' => $model,
            'login' => $login,
            'model_kontrak' => $model_kontrak,
            'cek_kontrak' => $cek_kontrak,
            'model_mutasi' => $model_mutasi,
            'cek_mutasi' => $cek_mutasi,
            'model_absensi' => $model_absensi,
            'cek_absensi' => $cek_absensi,
            'model_training' => $model_training,
            'cek_training' => $cek_training,
        ]);
    }

    public function actionViewm($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = $this->findModel($id);
        $login = Login::find()->where(['username' => $model->nik_karyawan])->one();
        $model_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_kontrak = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_mutasi = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $model_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $cek_absensi = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $cek_training = KaryawanDetail::find()->where(['id_karyawan' => $model->id_karyawan])->count();
        $searchModel = new KaryawanDetailSearch();
        $id_karyawan = $model->id_karyawan;
        $model_training = $searchModel->search_v(Yii::$app->request->queryParams, $id_karyawan);
        // $model_training = KaryawanDetail::find()->where(['id_karyawan' => $model->id_karyawan])->all();

        return $this->render('viewm', [
            'model' => $model,
            'login' => $login,
            'model_kontrak' => $model_kontrak,
            'cek_kontrak' => $cek_kontrak,
            'model_mutasi' => $model_mutasi,
            'cek_mutasi' => $cek_mutasi,
            'model_absensi' => $model_absensi,
            'cek_absensi' => $cek_absensi,
            'model_training' => $model_training,
            'cek_training' => $cek_training,
        ]);
    }

    /**
     * Creates a new Karyawan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Karyawan();
        $add_login = new Login();
        // $add_userrole = new Userrole();

        if ($model->load(Yii::$app->request->post())) {
            $add_login->username = $model->nik_karyawan;
            $add_login->password = '0';
            $add_login->nama = $model->nama_karyawan;
            // $add_login->foto = 'avatar5.png';

            // $add_userrole->id_login = $add_login->id_login;
            // $add_userrole->id_system_role = 26;
            // var_dump($add_login->username, $add_login->password, $add_login->nama);
            // die;
            $cek_uname = Karyawan::find()->where(['nik_karyawan' => $model->nik_karyawan])->one();

            if ($cek_uname) {
                // echo "sudah ada";
                Yii::$app->session->setFlash("danger", "Username sudah terdaftar!");
                return $this->redirect(['create']);
            } else {
                // echo "sip";
                $add_login->save();
                $model->save();
                return $this->redirect(['view', 'id' => $model->id_karyawan]);
            }
            // $model->save();
            // return $this->redirect(['view', 'id' => $model->id_karyawan]);
        } else {

            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Karyawan model.
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

        $login_update = Login::find()->where(['username' => $model->nik_karyawan])->one();

        if ($model->load(Yii::$app->request->post())) {

            // $login_update->username = $model->nik_karyawan;
            // $login_update->foto = 'avatar5.png';
            // $c = Yii::$app->request->get($login_update->id_login);
            // echo $c;

            // // echo $login_update->foto;
            // die;

            // $login_update->save();
            $model->save();

            return $this->redirect(['vieww', 'id' => $model->id_karyawan]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Karyawan model.
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
        // $q = "DELETE FROM `login` WHERE `login`.`username` = " . $model->nik_karyawan;
        $q = Login::find()->where(['username' => $model->nik_karyawan])->one();
        $k = Kontrak::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $m = Mutasi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $a = Absensi::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $i = Ijin::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $c = Cuti::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $t = Tunjangan::find()->where(['id_karyawan' => $model->id_karyawan])->one();
        $kd = KaryawanDetail::find()->where(['id_karyawan' => $model->id_karyawan])->one();

        // var_dump($a->id_karyawan);
        // die;
        if ($model) {

            if ($q) {
                $q->delete();
            }
            if ($k) {
                $k->delete();
            }
            if ($m) {
                $m->delete();
            }
            if ($a) {
                $a->delete();
            }
            if ($i) {
                $i->delete();
            }
            if ($c) {
                $c->delete();
            }
            if ($t) {
                $t->delete();
            }
            if ($kd) {
                $kd->delete();
            }
            $model->delete();
        }
        Yii::$app->session->setFlash("danger", "Data Karyawan sukses terhapus.");
        return $this->redirect(['index']);
    }

    /**
     * Finds the Karyawan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Karyawan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        if (($model = Karyawan::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
