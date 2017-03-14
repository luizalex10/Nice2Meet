<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTbQuizTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_quiz', function (Blueprint $table) {
            $table->increments('id_quiz');
            $table->integer('qt_pergunta');
            
            
            // Foreign key
            $table->integer('id_ponto_turistico')->unsigned();
            $table->foreign('id_ponto_turistico')->references('id_ponto_turistico')->on('tb_ponto_turistico');
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
        Schema::drop('tb_quiz');
    }
}
