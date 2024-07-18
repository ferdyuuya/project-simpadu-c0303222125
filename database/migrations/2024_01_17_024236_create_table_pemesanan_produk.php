<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pemesanans', function (Blueprint $table) {
            $table->id()->autoIncrement();
            $table->string('nama_lengkap');
            $table->string('email');
            $table->string('no_hp');
            $table->string('alamat');
            $table->string('kota');
            $table->string('kodepos');
            $table->unsignedBigInteger('produk_id');
            // $table->foreign('id_produk')->references('id')->on('produks');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pemesanan_produk');
    }
};
