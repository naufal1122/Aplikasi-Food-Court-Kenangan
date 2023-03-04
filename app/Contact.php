<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table='contact';
    protected $fillable=['firstname','lastname','email','message'];

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
}
