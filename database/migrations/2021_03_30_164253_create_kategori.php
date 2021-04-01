<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKategori extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kategori', function (Blueprint $table) {
            $table->bigIncrements("id_kategori");
            $table->integer("kategori_type_id");
            $table->string("kategori");
            $table->bigInteger("jumlah_dokumen")->nullable();
            $table->bigInteger("jumlah_like")->nullable();
            $table->bigInteger("jumlah_view")->nullable();
            $table->integer("created_by")->nullable();
            $table->integer("modified_by")->nullable();
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
        Schema::dropIfExists('kategori');
    }
}
