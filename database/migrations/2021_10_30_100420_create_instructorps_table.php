<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInstructorpsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('instructorps', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->text('description')->nullable();
            $table->string('follow_facebook')->nullable();
            $table->string('follow_twitter')->nullable();
            $table->string('follow_linkedin')->nullable();
            $table->string('follow_youtube')->nullable();
            $table->string('follow_instagram')->nullable();
            $table->integer('education_id')->nullable();
            $table->integer('skill_id')->nullable();
            $table->integer('certification_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('instructorps');
    }
}
