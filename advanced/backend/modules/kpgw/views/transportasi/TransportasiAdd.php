<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\modules\kpgw\models\Transportasi */

$this->title = 'Create Transportasi';
$this->params['breadcrumbs'][] = ['label' => 'Transportasis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="transportasi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
