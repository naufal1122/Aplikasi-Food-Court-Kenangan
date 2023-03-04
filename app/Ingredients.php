<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ingredients extends Model
{
    protected $table='ingredients';
    protected $fillable=['item_id','image'];

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
}
