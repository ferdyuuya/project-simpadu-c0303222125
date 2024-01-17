<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pemesanan extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'nama_lengkap',
        'email',
        'no_hp',
        'alamat',
        'kodepos',
        'kode_produk',
        'created_at',
        'updated_at',
    ];
}
