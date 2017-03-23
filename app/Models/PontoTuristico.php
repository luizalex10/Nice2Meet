<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PontoTuristico extends Model
{
    public $timestamps = false;
    protected $table = 'tb_ponto_turistico';
    protected $primaryKey = 'id_ponto_turistico';
    protected $fillable = [
        'id_ponto_turistico', 'nm_ponto_turistico', 'ds_ponto_turistico', 'ic_status_ponto_turistico'
    ];
    
    
    public function quiz()
    {
        return $this->hasOne('App\Models\Quiz', 'id_quiz', 'id_quiz');
    }
    
    public function ofertaPonto()
    {
        return $this->hasMany('App\Models\OfertaPonto', 'id_oferta_ponto', 'id_oferta_ponto');
    }
}
