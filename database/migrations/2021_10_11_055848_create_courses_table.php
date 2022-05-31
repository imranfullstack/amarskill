<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->integer('uploader_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('course_title');
            $table->string('slug');
            $table->text('short_description')->nullable();
            $table->text('description')->nullable();
            $table->integer('coursecategory_id');
            $table->integer('populer_post')->nullable();
            $table->string('level');
            $table->string('language');
            $table->string('status')->nullable();
            $table->string('top_course')->nullable();
            $table->string('course_type')->nullable();
            $table->string('course_price')->nullable();
            $table->string('media_provider')->nullable();
            $table->string('video_link')->nullable();
            $table->string('video_thumbnail')->nullable();
            $table->string('meta_keywords')->nullable();
            $table->text('meta_description')->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');



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
        Schema::dropIfExists('courses');
    }
}
