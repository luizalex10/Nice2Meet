<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTbRespostaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_resposta_questao', function (Blueprint $table) {
            $table->increments('id_resposta_questao');
            $table->string('ds_resposta_questao');
            $table->boolean('ic_resposta_correta');
            
            // Foreign key
            $table->integer('id_questao')->unsigned();
            $table->foreign('id_questao')->references('id_questao')->on('tb_questao');
            
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
        Schema::drop('tb_resposta_questao');
    }
}
