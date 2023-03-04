<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $table='slider';
    protected $fillable=['image','title','description'];

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
}
