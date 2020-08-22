<?php

namespace backend\controllers;

use Yii;
use backend\models\Ijin;
use backend\models\Karyawan;
use backend\models\IjinSearch;
use backend\models\CutiSearch;
use backend\models\TunjanganSearch;
use backend\models\Tunjangan;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * IjinController implements the CRUD actions for Ijin model.
 */
class ArsipController extends Controller
{
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit();
        }

        if (Yii::$app->request->get('aksi') == 'save') {

            $simpan = Tunjangan::find()->where(['id_tunjangan' => Yii::$app->request->post('id_tunj')])->one();
            $simpan->jumlah_uang = Yii::$app->request->post("jumlah_uang");

            // var_dump($simpan->id_tunjangan);
            // var_dump($simpan->jumlah_uang);
            // die;
            $simpan->save(false);


            Yii::$app->session->setFlash("success", "Berhasil !!!");

            return $this->redirect(['index']);
        }

        $ijin_search = new IjinSearch;
        $data_ijin = $ijin_search->search_arsip(Yii::$app->request->queryParams);
        $cuti_search = new CutiSearch();
        $data_cuti = $cuti_search->search_arsip(Yii::$app->request->queryParams);
        $tunjangan_search = new TunjanganSearch();
        $data_tunjangan = $tunjangan_search->search_arsip(Yii::$app->request->queryParams);


        return $this->render('index', [
            'ijin_search' => $ijin_search,
            'data_ijin' => $data_ijin,
            'cuti_search' => $cuti_search,
            'data_cuti' => $data_cuti,
            'tunjangan_search' => $tunjangan_search,
            'data_tunjangan' => $data_tunjangan,
        ]);
    }

    public function actionTunjangan()
    {
        $tunjangan = Tunjangan::find()->where(['id_tunjangan' => $_GET['id']])->asArray()->one();
        // $tunjangan = Tunjangan::find()->where(['id_tunjangan' => $id])->one();
        // return json_encode($tunjangan->id_tunjangan);
        // echo json_encode($tunjangan->id_tunjangan);
        return json_encode($tunjangan);
        // echo $tunjangan->id_tunjangan;
    }
}
