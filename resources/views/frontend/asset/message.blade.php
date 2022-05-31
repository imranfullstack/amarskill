
@if(Session::has('success'))

<div class="container">
	<br>

<p class="alert alert-info">{{ Session::get('success') }}</p>

</div>


@endif


@if(Session::has('alart'))
		<br>
			<p class="alert alert-warning">{{ Session::get('alart') }}</p>
@endif



