<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name',
        'price',
        'description',
    ];

    public function images()
    {
        return $this->belongsToMany('App\Models\Image', 'product_images');
    }
}
