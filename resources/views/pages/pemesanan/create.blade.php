@extends('layouts.app')

@section('title', 'New Pemesanan')

@push('style')
   <!-- CSS Libraries -->
@endpush

@section('main')
   <div class="main-content">
      <section class="section">
         <div class="section-header">
            <h1>New Pemesanan</h1>
            <div class="section-header-breadcrumb">
               <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
               <div class="breadcrumb-item"><a href="#">Pemesanan</a></div>
               <div class="breadcrumb-item">New Pemesanan</div>
            </div>
         </div>

         <div class="section-body">

            <div class="card">
               <form action="{{ route('pemesanan.store') }}" method="POST">
                  @csrf
                  <div class="card-header">
                     <h4>New Pemesanan</h4>
                  </div>
                  <div class="card-body">
                     
                     <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text"
                           class="form-control @error('nama_lengkap')
                           is-invalid
                        @enderror"
                           name="nama_lengkap">
                        @error('nama_lengkap')
                           <div class="invalid-feedback">
                              {{ $message }}
                           </div>
                        @enderror
                     </div>
                     <div class="form-group">
                        <label>Email</label>
                        <input type="email"
                           class="form-control @error('email')
                           is-invalid
                        @enderror"
                           name="email">
                        @error('email')
                           <div class="invalid-feedback">
                              {{ $message }}
                           </div>
                        @enderror
                     </div>
                     <div class="form-group">
                        <label>No Handphone</label>
                        <input type=""
                           class="form-control @error('no_hp')
                           is-invalid
                        @enderror"
                           name="no_hp">
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
                                 name="alamat">
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
                                 name="kota">
                              @error('kota')
                                 <div class="invalid-feedback">
                                       {{ $message }}
                                 </div>
                              @enderror
                           </div>
                        </div>
                        <div class="col-md-2">
                           <div class="form-group">
                              <label>Kodepos</label>
                              <input type="text"
                                 class="form-control @error('kodepos')
                                 is-invalid
                              @enderror"
                                 name="kodepos">
                              @error('kodepos')
                                 <div class="invalid-feedback">
                                    {{ $message }}
                                 </div>
                              @enderror
                           </div>
                        </div>
                     </div>
                     <div class="form-group mr-auto">
                        <label>Kode Produk</label>
                        <input type="text"
                           class="form-control @error('kode_produk')
                           is-invalid
                        @enderror"
                           name="kode_produk">
                        @error('kode_produk')
                           <div class="invalid-feedback">
                              {{ $message }}
                           </div>
                        @enderror
                     </div>

                  </div>
                  <div class="d-flex card-footer">
                     <a href="{{ route('pemesanan.index') }}" class="btn btn-secondary mr-auto">Kembali</a>
                     <button class="btn btn-primary">Pesan Sekarang</button>
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
