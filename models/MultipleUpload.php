<?php 
namespace app\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class MultipleUpload extends Model
{
	/**
	 * @var UploadedFile|Null file attribute
	 */
	public $file;

	/**
	 * @return array the validation rules.
	 */
	public function rules()
	{
		return [
			[['file'], 'file', 'maxFiles' => 5], // <--- здесь!
			[['file'], 'file', 'extensions' => 'jpg,png']
		];
	}
}