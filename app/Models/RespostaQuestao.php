<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RespostaQuestao extends Model
{
    public $timestamps = false;
    protected $table = 'tb_resposta_questao';
    protected $primaryKey = 'id_resposta_questao';
    protected $fillable = [
        'id_resposta_questao', 'ds_resposta_questao', 'ic_resposta_questao', 'id_questao'
    ];
    
    public function questao()
    {
        return $this->belongsTo('App\Models\Questao', 'id_questao', 'id_questao');
    }
}
