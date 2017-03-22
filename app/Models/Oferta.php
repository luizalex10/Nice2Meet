<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Oferta extends Model
{
    public $timestamps = false;
    protected $table = 'tb_oferta';
    protected $primaryKey = 'id_oferta';
    protected $fillable = [
        'id_oferta', 'ds_oferta', 'ic_status_oferta', 'id_parceiro'
    ];
    
    public function parceiro()
    {
        return $this->belongsTo('App\Models\Parceiro', 'id_parceiro', 'id_parceiro');
    }
}
