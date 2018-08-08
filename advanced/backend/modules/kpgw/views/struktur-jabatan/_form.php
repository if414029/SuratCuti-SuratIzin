<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\modules\kpgw\models\StrukturJabatan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="struktur-jabatan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'instansi_id')->textInput() ?>

    <?= $form->field($model, 'jabatan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'parent')->textInput() ?>

    <?= $form->field($model, 'inisial')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'is_multi_tenant')->textInput() ?>

    <?= $form->field($model, 'is_unit')->textInput() ?>

    <?= $form->field($model, 'deleted')->textInput() ?>

    <?= $form->field($model, 'deleted_at')->textInput() ?>

    <?= $form->field($model, 'deleted_by')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'created_by')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
