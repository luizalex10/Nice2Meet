<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTbQuestaoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_questao', function (Blueprint $table) {
            $table->increments('id_questao');
            $table->string('ds_questao');
            
            // Foreign keys
            $table->integer('id_quiz')->unsigned();
            $table->foreign('id_quiz')->references('id_quiz')->on('tb_quiz');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_questao', function(Blueprint $table){
            $table->dropForeign('id_quiz');
            $table->dropColumn('id_quiz');
        });
        Schema::drop('tb_questao');
    }
}
