<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BillDetail extends Model
{
    protected $table = "bill_detail";

    public function product(){
    	return $this->belongTo('App\Product','id_sp','id_ctbill');
    }

    public function bill(){
    	return $this->belongTo('App\Bill','id_bill','id_ctbill');
    }
}
