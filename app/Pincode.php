<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pincode extends Model
{
    protected $table='pincode';
    protected $fillable=['pincode'];

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
}
