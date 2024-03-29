@extends('layouts.app')

@section('title', 'Edit Schedule')

@push('style')
    <!-- CSS Libraries -->
@endpush

@section('main')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>Edit Pemesanan</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                    <div class="breadcrumb-item"><a href="#">Pemesanan</a></div>
                    <div class="breadcrumb-item">Edit Pemesanan</div>
                </div>
            </div>
            <div class="section-body">
                <div class="card">
                    <form action="{{ route('pemesanan.update', $pemesanan) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="card-header">
                            <h4>Edit Pemesanan</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>ID</label>
                                <input type="text"
                                    class="form-control @error('id')
                                    is-invalid
                                @enderror"
                                    name="subject_id" value="{{ $pemesanan->id }}" readonly>
                                @error('name')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text"
                                    class="form-control @error('nama_lengkap')
                                    is-invalid
                                @enderror"
                                    name="nama_lengkap" value="{{ $pemesanan->nama_lengkap }}">
                                @error('nama_lengkap')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text"
                                    class="form-control @error('email')
                                    is-invalid
                                @enderror"
                                    name="email" value="{{ $pemesanan->email }}">
                                @error('email')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>No HP</label>
                                <input type="text"
                                    class="form-control @error('no_hp')
                                    is-invalid
                                @enderror"
                                    name="no_hp" value="{{ $pemesanan->no_hp }}">
                                @error('no_hp')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror 
                            </div>
                            <div class="row">
                                <div class="col-md-6 me-a">
                                <div class="form-group mr-auto">
                                      <label>Alamat Lengkap</label>
                                      <input type="text"
                                         class="form-control @error('alamat')
                                         is-invalid
                                         @enderror"
                                         name="alamat" value="{{ $pemesanan->alamat }}">
                                         @error('alamat')
                                      <div class="invalid-feedback">
                                         {{ $message }}
                                      </div>
                                      @enderror
                                   </div>
                                </div>
                                <div class="col-md-4">
                                   <div class="form-group">
                                      <label>Kota</label>
                                      <input type="text"
                                         class="form-control @error('kota')
                                         is-invalid
                                      @enderror"
                                         name="kota" value="{{ $pemesanan->kota }}">
                                      @error('kota')
                                         <div class="invalid-feedback">
                                               {{ $message }}
                                         </div>
                                      @enderror
                                   </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Kode Pos</label>
                                        <input type="text"
                                            class="form-control @error('kodepos')
                                            is-invalid
                                        @enderror"
                                            name="kodepos" value="{{ $pemesanan->kodepos }}">
                                        @error('kodepos')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Kode Produk</label>
                                <input type="text"
                                    class="form-control @error('kode_produk')
                                    is-invalid
                                @enderror"
                                    name="kode_produk" value="{{ $pemesanan->kode_produk }}">
                                @error('kode_produk')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>
                        <div class="d-flex card-footer">
                            <a href="{{ route('pemesanan.index') }}" class="btn btn-secondary mr-auto">Kembali</a>
                            <button class="btn btn-danger">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
@endsection

@push('scripts')
    <!-- JS Libraies -->

    <!-- Page Specific JS File -->
@endpush