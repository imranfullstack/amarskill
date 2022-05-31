<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Courselession extends Model
{
    use HasFactory;


    public function course(){
    	return $this->belongsTo(Course::class);
    }
    public function section(){
    	return $this->belongsTo(Coursesection::class);
    }
    public function assignment(){
    	return $this->hasMany(Courseassignment::class);
    }
}
