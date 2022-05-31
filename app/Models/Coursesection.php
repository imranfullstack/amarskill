<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coursesection extends Model
{
    use HasFactory;



    public function course(){
        return $this->belongsTo(Course::class);
    }
    public function lession(){
        return $this->hasMany(Courselession::class);
    }
   
}
