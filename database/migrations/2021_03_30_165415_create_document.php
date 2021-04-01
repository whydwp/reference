<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDocument extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('document', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->bigInteger("id_kategori");
            $table->bigInteger("id_forum");
            $table->string("judul_dokumen");
            $table->integer("jumlah_halaman");
            $table->text("deskripsi_dokumen");
            $table->string("publisher");
            $table->string("tahun");
            $table->string("file");
            $table->string("cover")->nullable();
            $table->bigInteger("tipe_dokumen")->nullable();
            $table->bigInteger("jumlah_like")->nullable();
            $table->bigInteger("jumlah_view")->nullable();
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
        Schema::dropIfExists('document');
    }
}
