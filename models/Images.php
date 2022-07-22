<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "images".
 *
 * @property int $id
 * @property string|null $descr
 * @property string|null $category
 * @property int|null $userid
 * @property string|null $img
 * @property int|null $private
 * @property string|null $created
 */
class Images extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'images';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['img'], 'required'],
            [['userid', 'private'], 'integer'],
            [['userid'], 'default', 'value' => Yii::$app->user->identity->id],
            [['private'], 'default', 'value' => '1'],
            [['created'], 'safe'],
            [['created'], 'default', 'value' => date('Y-m-d H:i:s')],
            [['descr', 'category', 'img'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'descr' => 'Descr',
            'category' => 'Category',
            'userid' => 'Userid',
            'img' => 'Img',
            'private' => 'Private',
            'created' => 'Created',
        ];
    }

    public function loadDefaults(&$model)
    {
        //echo '<pre>'; //print_r($model);
        //var_dump($model); //die;
        isset($model['userid']) ? : $model['userid'] = Yii::$app->user->identity->id;
        isset($model['private']) ? : $model['private'] = '1';
        isset($model['created']) ? : $model['created'] = date('Y-m-d H:i:s');
        return;
    }

    public function saveImage($imageFileName) {

        $this->img = $imageFileName;
        return $this->save(false);

    }

    public function getImage() {

        return (!empty($this->img)) ? '@web/uploads/' . $this->img : '@web/uploads/no-image.png';

    }

}
