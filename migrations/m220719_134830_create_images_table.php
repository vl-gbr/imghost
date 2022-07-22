<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%images}}`.
 */
class m220719_134830_create_images_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%images}}', [
            'id' => $this->primaryKey(),
            'descr' => $this->string(255),
            'category' => $this->string(),
            'userid' => $this->integer(),
            'img' => $this->string(),
            'private' => $this->boolean(),
            'created' => $this->date()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%images}}');
    }
}
