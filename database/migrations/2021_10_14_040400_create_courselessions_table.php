<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCourselessionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courselessions', function (Blueprint $table) {
            $table->id();
            $table->string('image')->nullable();
            $table->integer('user_id');
            $table->string('lession_name');
            $table->string('slug');
            $table->integer('course_id');
            $table->integer('coursesection_id');
            $table->integer('video_type');
            $table->string('video_url');
            $table->string('video_duration');
            $table->string('viewnologin')->nullable();
            $table->integer('orderby')->nullable();
            $table->text('summary')->nullable();
            $table->text('details')->nullable();
            $table->integer('status');
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
        Schema::dropIfExists('courselessions');
    }
}
