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

use backend\models\Foto;

/**
 * TunjanganController implements the CRUD actions for Tunjangan model.
 */
class TunjanganController extends Controller
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



        $searchModel = new TunjanganSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Tunjangan model.
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

        if (Yii::$app->request->get('aksi') == 'hapus_buku_nikah') {
            if (!empty(Yii::$app->request->get('id_hapus'))) {
                Foto::deleteAll(["id_foto" => Yii::$app->request->get('id_hapus')]);

                $count_buku_nikah = Foto::find()->where(['id_tabel' => $id])->andWhere(['nama_tabel' => 'tunjangan_buku_nikah'])->count();
                if ($count_buku_nikah == 0) {
                    $model = Tunjangan::find()->where(['id_tunjangan' => $id])->one();
                    $model->dp_buku_nikah = 0;
                    $model->save(FALSE);
                }

                return $this->redirect(['view', 'id' => $id]);
            }
        }

        if (Yii::$app->request->get('aksi') == 'hapus_surat_kelahiran') {
            if (!empty(Yii::$app->request->get('id_hapus'))) {
                Foto::deleteAll(["id_foto" => Yii::$app->request->get('id_hapus')]);

                $count_surat_kelahiran = Foto::find()->where(['id_tabel' => $id])->andWhere(['nama_tabel' => 'tunjangan_surat_kelahiran'])->count();
                if ($count_surat_kelahiran == 0) {
                    $model = Tunjangan::find()->where(['id_tunjangan' => $id])->one();
                    $model->dp_surat_kelahiran = 0;
                    $model->save(FALSE);
                }

                return $this->redirect(['view', 'id' => $id]);
            }
        }

        if (Yii::$app->request->get('aksi') == 'hapus_surat_kematian') {
            if (!empty(Yii::$app->request->get('id_hapus'))) {
                Foto::deleteAll(["id_foto" => Yii::$app->request->get('id_hapus')]);

                $count_surat_kematian = Foto::find()->where(['id_tabel' => $id])->andWhere(['nama_tabel' => 'tunjangan_surat_kematian'])->count();
                if ($count_surat_kematian == 0) {
                    $model = Tunjangan::find()->where(['id_tunjangan' => $id])->one();
                    $model->dp_surat_kematian = 0;
                    $model->save(FALSE);
                }

                return $this->redirect(['view', 'id' => $id]);
            }
        }

        $foto_buku_nikah = Foto::find()->where(["id_tabel" => $id, "nama_tabel" => "tunjangan_buku_nikah"])->all();
        $foto_surat_kelahiran = Foto::find()->where(["id_tabel" => $id, "nama_tabel" => "tunjangan_surat_kelahiran"])->all();
        $foto_surat_kematian = Foto::find()->where(["id_tabel" => $id, "nama_tabel" => "tunjangan_surat_kematian"])->all();

        return $this->render('view', [
            'model' => $this->findModel($id),
            'foto_buku_nikah' => $foto_buku_nikah,
            'foto_surat_kelahiran' => $foto_surat_kelahiran,
            'foto_surat_kematian' => $foto_surat_kematian,
        ]);
    }

    /**
     * Creates a new Tunjangan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
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
            return $this->redirect(['view', 'id' => $model->id_tunjangan]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Tunjangan model.
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
        $mut = Mutasi::find()->where(['id_karyawan' => $q->id_karyawan])->one();

        if ($model->load(Yii::$app->request->post())) {

            $model->id_karyawan = $q->id_karyawan;
            $model->id_mutasi = $mut->id_mutasi;

            $kon = Kontrak::find()->where(['id_karyawan' => $q->id_karyawan])->one();
            $model->status_karyawan = $kon->status_kontrak;
            // var_dump($model->id_mutasi);
            // die;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id_tunjangan]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Tunjangan model.
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

        $model->status_tunjangan = 1;
        $model->save();
        Yii::$app->session->setFlash("success", "Request tunjangan dari karyawan berhasil disetujui.");
        return $this->redirect(['view', 'id' => $model->id_tunjangan]);


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

        $model->status_tunjangan = 2;
        $model->save();
        Yii::$app->session->setFlash("danger", "Request tunjangan dari karyawan berhasil ditolak.");
        return $this->redirect(['view', 'id' => $model->id_tunjangan]);


        // return $this->render('update', [
        //     'model' => $model,
        // ]);
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

    public function actionUploadBukuNikah()
    {

        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Foto();

        if (Yii::$app->request->isPost) {

            $model->nama_tabel  = Yii::$app->request->post('nama_tabel');
            $model->id_tabel    = Yii::$app->request->post('id_tabel');

            $ubah_tunjangan = Tunjangan::find()->where(['id_tunjangan' => $model->id_tabel])->one();
            $ubah_tunjangan->dp_buku_nikah = 1;
            $ubah_tunjangan->save(FALSE);

            $model->save(false);
            return $this->redirect(['view', 'id' => Yii::$app->request->post('id_tabel')]);
        } else {
            return $this->redirect(['view', 'id' => Yii::$app->request->post('id_tabel')]);
        }
    }

    public function actionUploadSuratKelahiran()
    {

        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Foto();

        if (Yii::$app->request->isPost) {

            $model->nama_tabel  = Yii::$app->request->post('nama_tabel');
            $model->id_tabel    = Yii::$app->request->post('id_tabel');

            $ubah_tunjangan = Tunjangan::find()->where(['id_tunjangan' => $model->id_tabel])->one();
            $ubah_tunjangan->dp_surat_kelahiran = 1;
            $ubah_tunjangan->save(FALSE);

            $model->save(false);
            return $this->redirect(['view', 'id' => Yii::$app->request->post('id_tabel')]);
        } else {
            return $this->redirect(['view', 'id' => Yii::$app->request->post('id_tabel')]);
        }
    }

    public function actionUploadSuratKematian()
    {

        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        $model = new Foto();

        if (Yii::$app->request->isPost) {

            $model->nama_tabel  = Yii::$app->request->post('nama_tabel');
            $model->id_tabel    = Yii::$app->request->post('id_tabel');

            $ubah_tunjangan = Tunjangan::find()->where(['id_tunjangan' => $model->id_tabel])->one();
            $ubah_tunjangan->dp_surat_kematian = 1;
            $ubah_tunjangan->save(FALSE);

            $model->save(false);
            return $this->redirect(['view', 'id' => Yii::$app->request->post('id_tabel')]);
        } else {
            return $this->redirect(['view', 'id' => Yii::$app->request->post('id_tabel')]);
        }
    }
}
