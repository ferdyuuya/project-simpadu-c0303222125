<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pemesanan extends Model
{
    use HasFactory;

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    public function student()
    {
        return $this->belongsTo(User::class);
    }
    protected $fillable = [
        'id',
        'nama_lengkap',
        'email',
        'no_hp',
        'alamat',
        'kota',
        'kodepos',
        'produk_id',
        'created_at',
        'updated_at',
    ];

    public function produk()
    {
        return $this->belongsTo(Produk::class);
    }
}
