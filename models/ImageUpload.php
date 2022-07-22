<?php 

namespace app\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;
use yii\helpers\Inflector;

class ImageUpload extends Model {

	public $img;

	public function rules()
	{
		return [
			[['img'], 'required'],
			[['img'], 'file', 'extensions' => 'jpg, png']
		];
	}

	public function uploadFile (UploadedFile $file) {
		
		$this->img = $file;

		$this->validate();
		
		$uploadsDir = Yii::getAlias('@web') . 'uploads/';
		$prefx = Yii::$app->user->identity->username . '_';
		$slugName = Inflector::slug($file->baseName);

		$fileName = $prefx . $slugName .'_'. date('Ymd_His');

		if (file_Exists($uploadsDir . $fileName .'.'. $file->extension)) {
			$fileName = uniqid($fileName .'_');
		}

		$file->saveAs($uploadsDir . $fileName .'.'. $file->extension);

		//echo '<pre>'; print_r($file);
		//var_dump($file); die;
		return $fileName .'.'. $file->extension;

	}

}
