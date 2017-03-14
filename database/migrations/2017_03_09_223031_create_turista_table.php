<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTuristaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_turista', function (Blueprint $table) {
            $table->increments('id_turista');
            $table->string('nm_turista');
            $table->string('nm_email_turista');
            $table->string('nm_senha_turista');
            $table->date('dt_nascimento');
            $table->integer('cd_telefone');
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
        Schema::drop('tb_turista');
    }
}
