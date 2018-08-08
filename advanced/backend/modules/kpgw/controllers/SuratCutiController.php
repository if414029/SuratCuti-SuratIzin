<?php

namespace backend\modules\kpgw\controllers;

use Yii;
use backend\modules\kpgw\models\SuratCuti;
use backend\modules\kpgw\models\search\SuratCutiSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * SuratCutiController implements the CRUD actions for SuratCuti model.
 */
class SuratCutiController extends Controller
{
    /**
     * @inheritdoc
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
     * Lists all SuratCuti models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new SuratCutiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider1 = $searchModel->search1(Yii::$app->user->identity->id, 'Approved', 'Finale_Approving');
        $dataProvider2 = $searchModel->search1(Yii::$app->user->identity->id, 'Requesting', '');
        $dataProvider3 = $searchModel->search1(Yii::$app->user->identity->id, 'Approved', 'Reject');
        $dataProvider4 = $searchModel->search1(Yii::$app->user->identity->id, 'Reject', '');

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'dataProvider1' => $dataProvider1,
            'dataProvider2' => $dataProvider2,
            'dataProvider3' => $dataProvider3,
            'dataProvider4' => $dataProvider4,
        ]);
    }

    /**
     * Displays a single SuratCuti model.
     * @param integer $id
     * @return mixed
     */
    public function actionSuratCutiView($id)
    {
        return $this->render('SuratCutiView', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new SuratCuti model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionSuratCutiAdd()
    {
        $model = new SuratCuti();
        $model->user_id =  Yii::$app->user->identity->id;
        $model->status_approvingAtasan = 'Requesting';
        $model->status_approvingWR = 'Waiting';
        $model->status_broadcast = 'Not Submitted Yet';

        if ($model->load(Yii::$app->request->post())) {
            if($model->save()){
                return $this->redirect(['/kpgw/surat-cuti/surat-cuti-view', 'id' => $model->surat_cuti_id]);
            }
        } else {
            return $this->render('SuratCutiAdd', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing SuratCuti model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionSuratCutiEdit($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/kpgw/surat-cuti/surat-cuti-view', 'id' => $model->surat_cuti_id]);
        } else {
            return $this->render('SuratCutiEdit', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing SuratCuti model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionSuratCutiDel($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the SuratCuti model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return SuratCuti the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = SuratCuti::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionSuratCutiIndexByWr() {
        $searchModel = new SuratCutiSearch();

        $dataProvider = $searchModel->searchbywr(Yii::$app->request->queryParams);
        $dataProvider7 = $searchModel->searchbywr('Approved', 'Finale_Approved');
        $dataProvider8 = $searchModel->searchbywr('Requesting');
        $dataProvider9 = $searchModel->searchbywr('Reject', 'Finale_Rejecting');

        return $this->render('SuratCutiIndexByWr', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                    'dataProvider7' => $dataProvider7,
                    'dataProvider8' => $dataProvider8,
                    'dataProvider9' => $dataProvider9,
        ]);
    }

    //Melihat Notifikasi oleh WR
    public function actionSuratCutiNotifikasiByWr() {
        $searchModel = new SuratCutiSearch();
        //$dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $query = SuratCuti::findBySql("SELECT * FROM kpgw_surat_cuti where status_approvingAtasan = 'Approved'");
        $dataProvider = new \yii\data\ActiveDataProvider(["query" => $query,]);

        return $this->render('SuratCutiNotifikasiByWr', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }
}
