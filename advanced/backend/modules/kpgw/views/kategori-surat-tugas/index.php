<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\modules\kpgw\models\search\KategoriSuratTugasSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Daftar Kategori Surat Tugas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kategori-surat-tugas-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> &nbsp;</span> Tambahkan Kategori Surat Tugas', ['kategori-surat-tugas-add'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'kategori_surat_tugas_id',
            'desc',
            //'deleted',
            //'created_at',
            //'created_by',
            // 'updated_at',
            // 'updated_by',
            // 'deleted_at',
            // 'deleted_by',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
