<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel backend\modules\kpgw\models\search\LaporanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Daftar Laporan Tugas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="laporan-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> &nbsp;</span> Submit Laporan', ['/kpgw/surat-tugas/index'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'laporan_id',
            //'surat_tugas_id',
            //'user_id',
            'file_laporan:ntext',
            [
                'label' => 'Nama Pegawai',
                'attribute' => 'user_id',
                'value' => 'userpegawai.nama'
            ],

            [
                'label' => 'Alasan Tugas',
                'attribute' => 'surat_tugas_id',
                'value' => 'suratTugas.alasan_tugas',
            ],

            [
                'label' => 'Tujuan Bertugas',
                'attribute' => 'surat_tugas_id',
                'value' => 'suratTugas.tujuan',
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'header' => 'Aksi',
                'template' => '{download}',
                'buttons' => [
                    'download' => function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-download-alt"></span>', $url, [
                                    'title' => Yii::t('yii', 'Download'),
                                    'class' => 'btn btn-success',
                        ]);
                    },
                        ],
                        'urlCreator' => function ($action, $model, $key, $index) {
                    if ($action === 'download') {
                        $url = Url::toRoute(['laporan-download', 'id' => $model->laporan_id]);
                        return $url;
                    }
                }
            ],
        ],
    ]); ?>
</div>
