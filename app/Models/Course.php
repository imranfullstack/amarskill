<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    public function category(){
    	return $this->belongsTo(Coursecategory::class,'coursecategory_id');
    }

     public function section(){
        return $this->hasMany(Coursesection::class);
    }

     public function lession(){
        return $this->hasMany(Courselession::class);
    }
     public function user(){
        return $this->belongsTo(User::class);
    }


     public function requirement(){
        return $this->hasMany(Courserequirement::class);
    }

     public function outcome(){
        return $this->hasMany(Courseoutcome::class);
    }
     public function faq(){
        return $this->hasMany(Coursefaq::class);
    }


     public function cart(){
        return $this->hasMany(Cart::class , 'course_id');
    }
    
    public function Wishlist(){
        return $this->hasMany(Wishlist::class , 'course_id');
    }
     public function orderitem(){
        return $this->hasMany(Orderitem::class);
    }


}
