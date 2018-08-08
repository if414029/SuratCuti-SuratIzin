<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\modules\kpgw\models\SuratTugas */

$this->title = 'Update Surat Tugas: ' . $model->surat_tugas_id;
$this->params['breadcrumbs'][] = ['label' => 'Surat Tugas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->surat_tugas_id, 'url' => ['view', 'id' => $model->surat_tugas_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="surat-tugas-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
