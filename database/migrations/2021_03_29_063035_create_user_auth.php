<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserAuth extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_auth', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->string("full_name", 255)->nullable()->default(NULL);
            $table->string("avatar_file", 255)->nullable()->default(NULL);
            $table->string("email", 64);
            $table->string("username", 64);
            $table->string("password", 64);
            $table->bigInteger("user_type_id");
            $table->bigInteger("user_entity_id")->nullable();
            $table->string("user_key", 64)->nullable();
            $table->dateTime("login_at")->nullable();
            $table->dateTime("modified_at")->useCurrent();
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
        Schema::dropIfExists('user_auth');
    }
}
