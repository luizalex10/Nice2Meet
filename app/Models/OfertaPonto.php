<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OfertaPonto extends Model
{
    public $timestamps = false;
    protected $table = 'tb_oferta_ponto';
    protected $primaryKey = 'id_oferta_ponto';
    protected $fillable = [
        'id_oferta', 'ds_oferta', 'ic_status_oferta', 'id_parceiro'
    ];
    
    public function pontoTuristico()
    {
        return $this->belongsTo('App\Models\PontoTuristico', 'id_ponto_turistico', 'id_ponto_turistico');
    }
    
    public function oferta()
    {
        return $this->belongsTo('App\Models\Oferta', 'id_oferta', 'id_oferta');
    }
}
