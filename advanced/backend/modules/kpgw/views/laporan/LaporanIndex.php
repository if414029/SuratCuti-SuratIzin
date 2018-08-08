<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\modules\sist\models\search\SistLaporanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'List Laporan Surat Tugas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sist-laporan-index">
    <table width="100%">
        <td width="90%"><h1><?= Html::encode($this->title) ?></h1> </td>
        <!--<td width="10%"><?= Html::a('<span class="glyphicon glyphicon-plus"></span> &nbsp; EdoReport', ['create'], ['class' => 'btn btn-info']) ?></td>-->
    </table>
    <br>
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> &nbsp;</span> Submit Laporan', ['/kpgw/surat-tugas/index'], ['class' => 'btn btn-success']) ?>
    </p>
    
    <?=
//    print_r($dataProvider);
//    die();
    GridView::widget([
        'dataProvider' => $dataProvider,
     //   'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           'file_laporan:ntext',

                ],
            ]);
            ?>
  
</div>
