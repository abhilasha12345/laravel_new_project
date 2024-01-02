<x-title topTitle="Customers List" />
@include('top_header')

<style>


</style>
@if(Session::has('message'))
<p class="alert {{ Session::get('alert-class', 'alert-info') }} alert-dismissible mt-3">
	<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	{{ Session::get('message') }}
</p>
@endif
<h1 class="mt-3 mb-3">Customers List Page</h1>
<?php
$i=1;
?>
<table class="table">
	<tr>
		<th>S.No</th>
		<th>Customer Name</th>
		<th>Image</th>
		<th>Email</th>
		<th>Dob</th>
		<th>City</th>
		<th>State</th>		
		<th>Country</th>
		<th>Action</th>		
	</tr>
	@php
		if(isset($_GET['page']))
			$i=($_GET['page']-1)*10+1;
		else $i=1;
	@endphp

@foreach($customers as $row)
	
	<tr>
		<td>{{$i++}}</td>
		<td>{{$row->name}}</td>
		<td><img src="{{url('img/'.$row->image)}}" width="50" height="50"/></td>
		<td>{{$row->email}}</td>
		<td>{{$row->dob}}</td>
		<td>{{$row->city}}</td>
		<td>{{$row->state}}</td>
		<td>{{$row->country}}</td>
		<td>
			<a href="/edit_customer/{{$row->id}}" class="btn btn-sm btn-success mb-1">Edit</a>
			<a href="delete_customer/{{$row->id}}" class="btn btn-sm btn-danger mb-1">Delete</a>
		</td>
	</tr>	
@endforeach
</table>
<div class="d-flex">{{$customers->links("pagination::bootstrap-4")}}</div>
@include('footer')

