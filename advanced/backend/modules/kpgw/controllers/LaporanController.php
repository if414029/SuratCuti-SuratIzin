<?php

namespace backend\modules\kpgw\controllers;

use Yii;
use backend\modules\kpgw\models\Laporan;
use backend\modules\kpgw\models\search\LaporanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * LaporanController implements the CRUD actions for Laporan model.
 */
class LaporanController extends Controller
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
     * Lists all Laporan models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new LaporanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }


    public function actionLaporanIndex() {
        $searchModel = new LaporanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
      //  echo(Yii:: $app->user->identity->id);
//        print_r($dataProvider);
//        die();
        return $this->render('LaporanIndex', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
        
    }

    /**
     * Displays a single Laporan model.
     * @param integer $id
     * @return mixed
     */
    public function actionLaporanView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Laporan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionLaporanAdd($id)
    {
        $user_id = Yii::$app->user->identity->id;
        $model = new Laporan();
        $model->created_at=date('Y-m-d');
        $model->created_by = Yii:: $app->user->identity->username;        
        $date = date('Y-m-d');

        if ($model->load(Yii::$app->request->post())) {
            $model->tanggal_pelaporan = $date;
            $sss = UploadedFile::getInstance($model, 'file_laporan');
            $model->user_id = $user_id;
            $model->surat_tugas_id = $id;
            $name = $model->surat_tugas_id;

            $model->file_laporan = "LaporanTugas". "_" .$date. "_" .$name . '.' . $sss->extension;
            if ($model->save()) {
                $sss->saveAs('file/'. "LaporanTugas" . "_" .$date. "_" .$name . '.' . $sss->extension);
            }

            return $this->redirect(['LaporanView', 'id' => $model->laporan_id]);
        } else {
            return $this->render('LaporanAdd', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Laporan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionLaporanEdit($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->laporan_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Laporan model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionLaporanDel($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionLaporanDownload($id) {
        $posts = Laporan::find()->where(['laporan_id' => $id])->one();
        $src;
        $src = "file/". $posts->file_laporan;

        //echo $src;
        if (@file_exists($src)) {
            //echo 'ada';
            $path_parts = @pathinfo($src);
            //$mime = $this->__get_mime($path_parts['extension']);
            header('Content-Description: File Transfer');
            header('Content-Type: pdf'); //application/octet-stream//pdf,doc,docx
            //header('Content-Type: '.$mime);
            header('Content-Disposition: attachment; filename=' . $posts->file_laporan); //basename($src)
            header('Content-Transfer-Encoding: binary');
            header('Expires: 0');
            header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
            header('Pragma: public');
            header('Content-Length: ' . filesize($src));
            ob_clean();
            flush();
            readfile($src);
        } else {
            $message = "File tidak tersedia";
            $title = "Laporan Surat Tugas";
            Yii::$app->session->setFlash('1', ['title' => $title, 'content' => $message]);
            return $this->redirect(['kpgw/laporan/view', 'id' => $id]);
            exit();
        }
    }

    /**
     * Finds the Laporan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Laporan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Laporan::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
