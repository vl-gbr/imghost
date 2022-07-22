<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\ImageUpload;

/* @var $this yii\web\View */
/* @var $model app\models\ImageUpload */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="images-form">

   <?php $form = ActiveForm::begin(); ?>

   <?= $form->field( $model, 'img')->fileInput(['maxlength' => true]) ?>

	<div class="form-group">
		<?= Html::submitButton('Set New', ['class' => 'btn btn-success']) ?>
	</div>

	<?php ActiveForm::end(); ?>

</div>
