@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row justify-content-center">
		<div class="col">
			<h2>Tambah Product</h2>
			<br />
			@if(count($errors))
			<div class="from-group">
				<div class="alert alert-danger">
					<ul>
						@foreach($errors->all() as $error)
						  <li>{{$error}}</li>
						@endforeach
					</ul>
				</div>
			</div>
			@endif
			<br />

			<form action="{{ route('admin.products.store') }}" method="POST" enctype="multipart/form-data">
				{{ csrf_field() }}
				<div class="from-group">
					<label>Nama Produk</label>
					<input type="text" name="name" class="form-control" placeholder="Nama Produk">
				</div>
				<div class="from-group">
					<label>Harga</label>
					<input type="number" name="price" class="form-control" placeholder="Harga">
				</div>
				<div class="from-group">
					<label>Deskripsi</label>
					<textarea name="description" id="ckview"> </textarea>
					<script src="{{url('plugins/tinymce/jquery.tinymce.min.js')}}"></script>
					<script src="{{url('plugins/tinymce/tinymce.min.js')}}"></script>
					<script>tinymce.init({ selector:'#ckview' });</script>
				</div>
				 <div class="form-group">
                                <label for="images">Images</label>
                                <input type="file" class="form-control-file" name="images[]" multiple>
                 </div>
				<button type="submit" class="btn btn-primary">Submit</button>
				<a href="{{ route('admin.products.index') }}" class="btn btn-primary">Back</a>
			</form>
		</div>
	</div>
</div>
@endsection