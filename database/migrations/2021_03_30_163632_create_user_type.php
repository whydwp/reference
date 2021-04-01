<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserType extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_type', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->string("type");
            $table->bigInteger("created_by")->nullable();
            $table->bigInteger("updated_by")->nullable();
            $table->dateTime("modified_at")->useCurrent();
            $table->dateTime("created_at")->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_type');
    }
}
