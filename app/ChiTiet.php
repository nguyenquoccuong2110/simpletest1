<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChiTiet extends Model
{
    protected $table = "chitiet";
    public function product(){
    	return $this->belongTo('App\Product','id_chitiet','id_sp');
    }
    
}
