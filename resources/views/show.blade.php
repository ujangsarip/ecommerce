@extends('layouts.app')

@section('content')
<div class="container col-md-8">
	<div class="row justify-content-center">
		<div class="col">
			<h2>Hasil Produk</h2>
			<br />
			<div class="table-responsive">
				<table class="table table-hover table-sm">
					<tr>
						<td>No</td>
						<td>Name</td>
						<td>Price</td>
						<td>Description</td>
						<td>Created_At</td>
												<td>Images</td>						
					</tr>
					<tr>
						<td>{{ $products['id'] }}</td>
						<td>{{ $products['name'] }}</td>
						<td>{{ $products['price'] }}</td>
						<td>{{ $products['description'] }}</td>
						<td>{{ $products['created_at'] }}</td>
						@if(!$products->images()->get()->isEmpty())
						<td>
							 @foreach($products->images()->get() as $image)
                            <image src="{{ asset('/images/'.$image->image_src) }}" class="img-thumbnail img-fluid" alt="{{ $image->image_desc }}" style="width:200px;height:200px;"></image>
                        @endforeach
						</td>
                        @endif
					</tr>
					
				</table>
				<div>
						<a href="{{ url('/public') }}" class="btn btn-primary">Back</a>
					</div>
				
			</div>
			
		</div>
		
	</div>
	
</div>
@endsection