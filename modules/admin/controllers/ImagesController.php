<?php

namespace app\modules\admin\controllers;

use app\models\Images;
use app\models\ImagesSearch;
use app\models\ImageUpload;
use app\models\MultipleUpload;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * ImagesController implements the CRUD actions for Images model.
 */
class ImagesController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Images models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new ImagesSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);
        
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Images model.
     * @param int $id ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }
    
    /**
     * Creates a new Images model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Images();

        if ($this->request->isPost) {

            $modelUpload =  new ImageUpload;

            $file = UploadedFile::getInstance($model, 'img');

            $model->load($this->request->post()); 
            // $model->save();

            $model->saveImage($modelUpload->uploadFile($file));

            return $this->redirect(['view', 'id' => $model->id]);

        } else {

            $model->loadDefaultValues();
            $model->loadDefaults($model);

        }

        return $this->render('create', [
            'model' => $model
        ]);
    }

    /**
     * Updates an existing Images model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            $model->loadDefaults($model);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Images model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionMultipleUpload()
    {
        $goBack = Yii::$app->request->referrer;

        $model = new MultipleUpload();
        
        if (Yii::$app->request->isPost) {
            
            $model->file = UploadedFile::getInstances($model, 'file');
            
            if ($model->file && $model->validate()) {
                foreach ($model->file as $file) {

                    $item = new ImageUpload;
                    $img = new Images();

                    $img->load($this->request->post()); 
                    $img->save();
                    
                    $img->saveImage($item->uploadFile($file));
                    //$file->saveAs('uploads/' . $file->baseName . '.' . $file->extension);
                }
            }
            return $this->redirect(['index']);
        }

        return $this->render('multipleupload', ['model' => $model]);
    }

    public function actionSetImage($id)
    {
        $model =  new ImageUpload;
        $goBack = Yii::$app->request->referrer;
        //var_dump($goBack);


        if (Yii::$app->request->isPost) {
            
            if ($id){
                $img = $this->findModel($id);
            }else{
                $img = new Images();
            }


            $file = UploadedFile::getInstance($model, 'img');

            //if ($img->saveImage($model->uploadFile($file))) {
            if ($img->saveImage($model->uploadFile($file))) {
                if ($id){
                    return $this->redirect(['view', 'id'=>$img->id]);
                }else{
                    return $this->redirect($goBack);            
                }
                    //return $this->redirect(Yii::$app->request->referrer);            }
            }

        }

        return $this->render('image', ['model' => $model]);
    }

    /**
     * Finds the Images model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Images the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Images::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
