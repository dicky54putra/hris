<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

function ribuan($string)
{
    if ($string > 0) {
        return number_format($string, 0, ",", ".");
    } else {
        return 0;
    }
}

function mysql2phpdatelong($date)
{
    $mysqldate = strtotime($date);
    $phpdate = date('d F Y ', $mysqldate);
    if ($phpdate != "01-01-1970") {
        return $phpdate;
    } else {
        return " - ";
    }
}

return [
    'id' => 'app-backend',
    'name' => 'PT WADJA KARYA DUNIA',
    'timeZone' => 'Asia/Makassar',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    //'bootstrap' => ['gii'],
    'bootstrap' => ['debug'],
    'modules' => [
        'gii' => [
            'class' => 'yii\gii\Module',
            'allowedIPs' => ['127.0.0.1', '::1', '192.168.1.*']
        ],
        'gridview' =>  [
            'class' => '\kartik\grid\Module'

        ],
        'debug' => [
            'class' => 'yii\debug\Module',
            'allowedIPs' => ['127.0.0.1', '::1']
        ],
        'utility' => [
            'class' => 'c006\utility\migration\Module',
        ],
    ],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=hris',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],
        'user' => [
            'identityClass' => 'backend\models\Login',
            'enableAutoLogin' => false,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                //if logs need to save in files                
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning', 'info'],
                    'categories' => ['application'],
                    'logVars' => ['_POST', '_GET'],
                ],

                // if logs need to save in database. You need to create a db table as well.
                [
                    'class' => 'yii\log\DbTarget',
                    'prefix' => function ($message) {
                        $user = Yii::$app->user->identity->nama;
                        return $user;
                    },
                    'levels' => ['info'],
                    'categories' => ['yii\db\Command::execute'], // all database queries
                    'except' => ['application'], // appilcation buang
                    'logVars' => [],

                ],

                //if logs need to send email
                [
                    'class' => 'yii\log\EmailTarget',
                    'levels' => ['error'],
                    'categories' => ['yii\db\*'], // all database queries
                    'message' => [
                        'from' => ['log@example.com'],
                        'to' => ['admin@example.com', 'developer@example.com'],
                        'subject' => 'Database errors at example.com',
                    ],
                ],
            ],
        ],
        'errorHandler' => [
            // use 'site/error' action to display errors
            'errorAction' => YII_DEBUG ? null : 'site/error',
        ],
        'assetManager' => [
            'bundles' => [
                'dmstr\web\AdminLteAsset' => [
                    //'skin' => 'skin-red',
                ],
            ],
        ],
        'formatter' => [

            'dateFormat' => 'dd-MM-yyyy',
            'decimalSeparator' => ',',
            'thousandSeparator' => '.',
            'currencyCode' => 'Rp',
            'class'           => 'yii\i18n\Formatter',
            'defaultTimeZone' => 'Asia/Makassar',
        ],


        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
    ],
    'params' => $params,
];
