<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\modules\kpgw\models\KuotaCutiTahunan */

$this->title = 'Create Kuota Cuti Tahunan';
$this->params['breadcrumbs'][] = ['label' => 'Kuota Cuti Tahunans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kuota-cuti-tahunan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
