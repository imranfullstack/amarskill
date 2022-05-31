<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Courseassignment extends Model
{
    use HasFactory;

    public function lession(){
    	return $this->belongsTo(Courselession::class);

    }
    public function course(){
    	return $this->belongsTo(Course::class);

    }




}
