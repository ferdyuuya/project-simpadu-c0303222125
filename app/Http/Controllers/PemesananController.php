<?php

namespace App\Http\Controllers;

use App\Models\Pemesanan;
use Illuminate\Http\Request;

class PemesananController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pemesanan = Pemesanan::paginate(10)->withQueryString();
        return view('pages.pemesanan.index-pemesanan', ['pemesanan' => $pemesanan]);
    }

    public function create()
    {
        return view('pages.pemesanan.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Pemesanan::create([
            'id' => $request['id'],
            'nama_lengkap' => $request['nama_lengkap'],
            'email' => $request['email'],
            'no_hp' => $request['no_hp'],
            'alamat' => $request['alamat'],
            'kodepos' => $request['kodepos'],
            'kode_produk' => $request['kode_produk'],
            'created_by' => $request['created_by'],
            'updated_by' => $request['updated_by']
        ]);

        $pemesanan = Pemesanan::paginate(10)->withQueryString();
        return view('pages.pemesanan.index-pemesanan', ['pemesanan' => $pemesanan]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Pemesanan $pemesanan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pemesanan $pemesanan)
    {
        return view('pages.pemesanan.edit', ['pemesanan' => $pemesanan]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pemesanan $pemesanan)
    {
        $pemesanan->update([
            'id' => $pemesanan->id,
            'nama_lengkap' => $request['nama_lengkap'],
            'email' => $request['email'],
            'no_hp' => $request['no_hp'],
            'alamat' => $request['alamat'],
            'kodepos' => $request['kodepos'],
            'kode_produk' => $request['kode_produk'],
            'updated_by' => $request['updated_by']
        ]);

        return redirect()->route('pemesanan.index')->with('success', 'Update Pemesanan Successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pemesanan $pemesanan)
    {
        $pemesanan->delete();
        return redirect()->route('pemesanan.index')->with('success', 'Delete Pemesanan Successfully');
    }
}
