<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Images */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="images-form">

    <?php $form = ActiveForm::begin(); ?>
    <?php if (isset($model->id)) : ?>
        <?= $form->field($model, 'img')->textInput(['maxlength' => true]) ?>
    <?php else: ?>
        <?= $form->field($model, 'img')->fileInput(['maxlength' => true]) ?>
    <?php endif; ?>
    <?= $form->field($model, 'descr')->textInput() ?>
    <?= $form->field($model, 'category')->textInput() ?>
    <?= $form->field($model, 'userid')->textInput(['disabled' => true]) ?>
    <?= $form->field($model, 'private')->textInput() ?>
    <?= $form->field($model, 'created')->textInput(['disabled' => true])?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
