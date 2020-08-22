<?php

namespace backend\controllers;

use backend\models\Lambung;
use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use backend\models\LoginForm;
use backend\models\LoginKaryawanForm;
use backend\models\Log;
use backend\models\Login;
use backend\models\Pesawat;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error', 'login-karyawan'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionError()
    {
        $exception = Yii::$app->errorHandler->exception;
        if ($exception !== null) {
            return $this->render('error', ['exception' => $exception]);
        }
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goBack();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {

            $input_log = new Log();
            $input_log->level = '0';
            $input_log->category = 'Login';
            $input_log->log_time = microtime('get_as_float');
            $input_log->prefix = Yii::$app->user->identity->nama;
            $input_log->message = 'Login';
            $input_log->save(false);

            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    public function actionLoginKaryawan()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goBack();
        }

        $model = new LoginKaryawanForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {

            $input_log = new Log();
            $input_log->level = '0';
            $input_log->category = 'Login';
            $input_log->log_time = microtime('get_as_float');
            $input_log->prefix = Yii::$app->user->identity->nama;
            $input_log->message = 'Login';
            $input_log->save(false);

            return $this->goBack();
        } else {
            return $this->render('login_karyawan', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
