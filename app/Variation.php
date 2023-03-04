<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Variation extends Model
{
    protected $table='variation';
    protected $fillable=['branch_id','item_id','product_price','sale_price','variation'];

}