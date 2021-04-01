<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEbook extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ebook', function (Blueprint $table) {
            $table->bigIncrements("id_ebook");
            $table->bigInteger("id_kategori");
            $table->bigInteger("user_id")->nullable();
            $table->string("judul_ebook");
            $table->text("deskripsi_ebook");
            $table->string("publisher");
            $table->integer("tahun");
            $table->string("cover");
            $table->string("keterangan");
            $table->string("file");
            $table->integer("id_status");
            $table->bigInteger("created_by")->nullable();
            $table->bigInteger("modified_by")->nullable();
            $table->dateTime("modified_at");
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
        Schema::dropIfExists('ebook');
    }
}
