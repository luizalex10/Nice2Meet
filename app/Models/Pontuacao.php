<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pontuacao extends Model
{
    public $timestamps = false;
    protected $table = 'tb_pontuacao';
    protected $primaryKey = 'id_pontuacao';
    protected $fillable = [
        'dt_pontuacao', 'qt_pontuacao', 'id_turista', 'id_ponto_turistico', 'id_cupom'
    ];
    
    public function turista()
    {
        return $this->belongsTo('App\Models\Turista', 'id_turista', 'id_turista');
    }
}
