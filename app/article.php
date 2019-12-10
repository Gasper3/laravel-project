<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class article extends Model
{
    protected $guarded = [];

    public function comments()
    {
      return $this->hasMany(Comments::class);
    }
}
