<?php

namespace backend\modules\kpgw\controllers;

use Yii;
use backend\modules\kpgw\models\SuratTugas;
use backend\modules\kpgw\models\search\SuratTugasSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * SuratTugasController implements the CRUD actions for SuratTugas model.
 */
class SuratTugasController extends Controller
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
     * Lists all SuratTugas models.
     * @return mixed
     */
    public function actionIndex()
    {
        $id = Yii::$app->user->identity->id;
        $searchModel = new SuratTugasSearch();
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

    public function actionSuratTugasIndex() {
        $searchModel = new SuratTugasSearch();
        $dataProvider = $searchModel->searchbyhrd(Yii::$app->request->queryParams);
        $dataProvider4 = $searchModel->searchbyhrd('Approved');
        $dataProvider5 = $searchModel->searchbyhrd('Requesting');
        $dataProvider6 = $searchModel->searchbyhrd('Reject');

        return $this->render('SuratTugasIndex', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                    'dataProvider4' => $dataProvider4,
                    'dataProvider5' => $dataProvider5,
                    'dataProvider6' => $dataProvider6,
        ]);
    }

    /**
     * Displays a single SuratTugas model.
     * @param integer $id
     * @return mixed
     */
    public function actionSuratTugasView($id)
    {
        return $this->render('SuratTugasView', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new SuratTugas model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionSuratTugasAdd()
    {
        $model = new SuratTugas();
        $model->tanggal_pengajuan = date('Y-m-d');
        $model->created_at = date('Y-m-d');
        $model->created_by = Yii:: $app->user->identity->username;
        $model->user_id =  Yii::$app->user->identity->id;
        $data = Yii::$app->request->post();
        $model->status_broadcast = 'Not Submitted Yet';
        $model->status_laporan = 'Not Submitted Yet';

        $model->load(Yii::$app->request->post());

        if (!empty($data)) {
            $model["dosen_pendamping"] = $data["SuratTugas"]["dosen_pendamping"];
            if (!empty($model["dosen_pendamping"])) {
                $model["dosen_pendamping"] = implode(',', $model["dosen_pendamping"]);
            }
            if ($model->save()) {
                return $this->redirect(['/kpgw/surat-tugas/surat-tugas-view', 'id' => $model->surat_tugas_id]);
            }
        }  else {
            return $this->render('SuratTugasAdd', [
                'model' => $model,
            ]);
        }
    }

    //terima request oleh HRD
    public function actionSuratTugasApproved($id) {
        $model = $this->findModel($id);
        $model->status_approvingHRD = 'Approved';
        $model->save();

        $searchModel = new SuratTugasSearch();
        $dataProvider4 = $searchModel->searchbyhrd('Approved');
        $dataProvider6 = $searchModel->searchbyhrd('Reject');

        return $this->render('SuratTugasApprovedBrowse', [
                    'searchModel' => $searchModel,
                    'dataProvider4' => $dataProvider4,
                    'dataProvider6' => $dataProvider6,
        ]);
    }
    
    //tolak request oleh HRD
    public function actionSuratTugasReject($id) {
        $model = $this->findModel($id);
        $model->status_approvingHRD = 'Reject';
        $model->save();

        $searchModel = new SuratTugasSearch();
        $dataProvider4 = $searchModel->searchbyhrd('Approved');
        $dataProvider6 = $searchModel->searchbyhrd('Reject');

        return $this->render('SuratTugasRejectedBrowse', [
                    'searchModel' => $searchModel,
                    'dataProvider4' => $dataProvider4,
                    'dataProvider6' => $dataProvider6,
        ]);
    }

    //terima request oleh WR final
    public function actionSuratTugasApprovedByWr($id) {
        $model = $this->findModel($id);
        $model->status_approvingWR = 'Finale_Approving';
        $model->save();

        $searchModel = new SuratTugasSearch();
        $dataProvider4 = $searchModel->searchbywrfinal('Approved', 'Finale_Approving');
    
        return $this->render('SuratTugasApprovedBrowseByWr', [
                    'searchModel' => $searchModel,
                    'dataProvider4' => $dataProvider4,
        ]);
    }

    //Melihat daftar yang telah di approved by HRD dan WRII/WRIII
    public function actionSuratTugasPrint() {
        $searchModel = new SuratTugasSearch();
        $dataProvider = $searchModel->searchbyhrd(Yii::$app->request->queryParams);
        $dataProvider4 = $searchModel->searchbyhrdFinal('Approved', 'Finale_Approving');

        return $this->render('SuratTugasPrint', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                    'dataProvider4' => $dataProvider4,
        ]);
    }

    /**
     * Updates an existing SuratTugas model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionSuratTugasEdit($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['SuratTugasView', 'id' => $model->surat_tugas_id]);
        } else {
            return $this->render('SuratTugasEdit', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing SuratTugas model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionSuratTugasDel($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the SuratTugas model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return SuratTugas the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = SuratTugas::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionSuratTugasIndexByWr() {
        $searchModel = new SuratTugasSearch();

        $dataProvider = $searchModel->searchbywr(Yii::$app->request->queryParams);
        $dataProvider7 = $searchModel->searchbywr('Approved', 'Finale_Approved');
        $dataProvider8 = $searchModel->searchbywr('Requesting');
        $dataProvider9 = $searchModel->searchbywr('Reject', 'Finale_Rejecting');

        return $this->render('SuratTugasIndexByWr', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                    'dataProvider7' => $dataProvider7,
                    'dataProvider8' => $dataProvider8,
                    'dataProvider9' => $dataProvider9,
        ]);
    }

    //Notifikasi oleh HRD
    public function actionSuratTugasNotifikasi()
    {
        $searchModel = new SuratTugasSearch();
        $dataProvider = $searchModel->searchbyhrd(Yii::$app->request->queryParams);
        $dataProvider4 = $searchModel->searchbyhrd('Approved');
        $dataProvider5 = $searchModel->searchbyhrd('Requesting');
        $dataProvider6 = $searchModel->searchbyhrd('Reject');

        return $this->render('SuratTugasNotifikasi', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'dataProvider4' => $dataProvider4,
            'dataProvider5' => $dataProvider5,
            'dataProvider6' => $dataProvider6,
        ]);
    }

    //Melihat Notifikasi oleh WR
    public function actionSuratTugasNotifikasiByWr() {
        $searchModel = new SuratTugasSearch();
        //$dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $query = SuratTugas::findBySql("SELECT * FROM kpgw_surat_tugas where status_approvingHRD = 'Approved'");
        $dataProvider = new \yii\data\ActiveDataProvider(["query" => $query,]);

        return $this->render('SuratTugasNotifikasiByWr', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

}
