@include('top_header')
<h3 class="mb-3 mt-3">Add Customer Page</h3>

<style>
form{
	width:100%;
}
.error{
	color:red;
	font-size:12px;
}
input.error,select.error{
	border:1px solid red;
}
label#gender-error{
	display:block;
}
</style>
{{--@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
--}}
 
<div class="row">
<form method="POST" action="/save_customer" enctype="multipart/form-data" id="customer_form">
	
@csrf
<div class="row mb-3">
	<div class="form-group col">
	    <label for="product_name">Customer Name:</label>
	    <input type="text" class="form-control @error('customer_name') is-invalid @enderror" placeholder="Enter Customer Name" name="customer_name" value="{{ old('customer_name') }}">
	    @error('customer_name')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
	<div class="form-group col">
		<label for="gender">Gender</label><br>
		<div class="form-check-inline">			
		  <label class="form-check-label">
		    <input type="radio" class="form-check-input  @error('gender') is-invalid @enderror" name="gender" value="male" @if(old('gender')=='male')checked @endif>&nbsp;Male
		  </label>
		</div>
		<div class="form-check-inline">
		  <label class="form-check-label">
		    <input type="radio" class="form-check-input  @error('gender') is-invalid @enderror" name="gender" value="female" @if(old('gender')=='female')checked @endif>&nbsp;Female
		  </label>
		</div>
		<div class="form-check-inline">
		  <label class="form-check-label">
		    <input type="radio" class="form-check-input  @error('gender') is-invalid @enderror" name="gender" value="other" @if(old('gender')=='other')checked @endif>&nbsp;Other
		  </label>
		</div>
		@error('gender')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
</div>
<div class="row mb-3">	
	<div class="form-group col">
		<label for="email">Email:</label>
	    <input type="text" class="form-control  @error('email') is-invalid @enderror" placeholder="Enter Email" name="email" value="{{ old('email') }}">
	    @error('email')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
	<div class="form-group  col">
	    <label for="phone">Phone No:</label>
	    <input type="text" class="form-control  @error('phone') is-invalid @enderror" placeholder="Enter Phone No." name="phone" value="{{ old('phone') }}">
	    @error('phone')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
	
</div>
<div class="row mb-3">	
	<div class="form-group col">
	    <label for="dob">DOB:</label>
	    <input type="text" class="form-control  @error('dob') is-invalid @enderror" placeholder="Enter DOB" name="dob" id="datepicker" value="{{ old('dob') }}">
	    @error('dob')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>	
	<div class="form-group col">
		<label for="address">Address:</label>
	    <input type="text" class="form-control  @error('address') is-invalid @enderror" placeholder="Enter Address" name="address" value="{{ old('address') }}">
	    @error('address')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
</div>
<div class="row mb-3">
	<div class="form-group  col">
	    <label for="city">City:</label>
	    <input type="text" class="form-control  @error('city') is-invalid @enderror" placeholder="Enter City" name="city" value="{{ old('city') }}">
	    @error('city')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
	<div class="form-group  col">
	    <label for="state">State:</label>
	    <input type="text" class="form-control  @error('state') is-invalid @enderror" placeholder="Enter State" name="state" value="{{ old('state') }}">
	    @error('state')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
</div>
<div class="row mb-3">
	<div class="form-group  col">
	    <label for="country">Country:</label>
	    <select class="form-control  @error('country') is-invalid @enderror" name="country" value="{{ old('country') }}">
	    	<option value="">Select</option>
	    	<option value="India" @if(old('country')=='India')selected @endif>India</option>
	    	<option value="USA" @if(old('country')=='USA')selected @endif>USA</option>
	    </select>
	    @error('country')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror	   
	</div>
	<div class="form-group  col">
	    <label for="image">Image:</label>
	    <input type="file" class="form-control  @error('image') is-invalid @enderror" placeholder="Enter Product Image" name="image" accept="image/*"  value="{{ old('image') }}">
	    @error('image')
		    <div class="error mt-1">{{ $message }}</div>
		@enderror
	</div>
</div>
	<button type="submit" class="btn btn-primary">Submit</button>

</form>
</div>


@include('footer')



<script src='https://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js'></script>
<script>
 $(document).ready(function($) {
        
	$("#customer_form22").validate({
		rules: {
			customer_name: "required",                    
			phone: "required",                   
			dob: "required",                    
			city: "required",                    
			state: "required",                    
			country: "required",                    
			address: "required",                    
			gender: "required",                    
			image: "required",                    
			email: {
				required: true,
				email: true
			},                    
			                  
			//profile_pic: "required",
		   //gender: "required"
		 
		},
		messages: {			
		   
		},
		errorPlacement: function(error, element) 
		{
			if ( element.is(":radio") ) 
			{
				error.appendTo( element.parents('.form-group') );
			}
			else 
			{ // This is the default behavior 
				error.insertAfter( element );
			}
		},
				submitHandler: function(form) {
					form.submit();
				}
				
			});
	});
$( function() {
    $( "#datepicker" ).datepicker({
		dateFormat:"dd-mm-yy",
		maxDate: '0', 
		onSelect: function (date, datepicker) { 
			if (date != "") { 
				$( "#datepicker" ).trigger('blur');
			} 
		} 
	});
  });
  </script>