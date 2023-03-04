<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table='categories';
    protected $fillable=['category_name','image'];

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
}
