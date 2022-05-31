<!DOCTYPE html>
<html>
<head>
	<title>Invoice PDF - {{$item->course->course_title}}</title>

	<style type="text/css">
		.top-logo-aria {
			float: right;	
		}
		.top-logo-aria img{
			width: 50%;	
		}
		.adjustd03c{
			width: 33%;
		}
		.invoice-top-part2d3c * {
		    margin: 0;
		    padding: 5px 0;
		}
		table.table-dksldc tr td {
		    padding: 10px 15px;
		}


	</style>
</head>
<body>



<table style="width:100%">
  <tr>
  	<td width="50%">
  		<div class="invoice-top-part2d3c">	
				<h1>Invoice</h1>
				<h4>Amar SKill LTD</h4>
				<p>Site : amarskill.net</p>  	
  		</div>
  	</td>
  	<td width="50%">
  		<div class="top-logo-aria">
  			<br>
  			<img src="https://amaritsdi.com/wp-content/uploads/2021/03/Amar-IT-Logo-Final.png" style="width: 50%">
  		</div>
  	</td>
  </tr>
</table>

<hr>
<h4> Course Name - {{$item->course->course_title}}</h4>

<hr>
<table style="width:100%" class="table-dksldc">
  <tr>
  	<td class="adjustd03c"><b>BILL TO</b></td>
  	<td class="adjustd03c"><b>INVOICE</b></td>
  	<td class="adjustd03c">#{{$item->order->invoice_no}}</td>
  </tr>
  <tr>
  	<td>{{$item->user->name}}</td>
  	<td><b>PURCHASE  DATE</b></td>
  	<td>{{ $item->created_at->format('d/m/Y')}}</td>
  </tr>
  <tr>
  	<td>{{$item->user->phone}}</td>
  	<td><b>COURSE PRICE</b></td>
  	<td>
  		@if($item->course->course_price)
  		{{$item->course->course_price}} Taka
  		@else
  			<span class="badge badge-success">Free Course</span>
  		@endif
  	</td>
  </tr>
  <tr>
  	<td>{{$item->user->email}}</td>
  	<td><b>INSTRUCTOR</b></td>
  	<td>{{$item->course->user->name}}</td>
  </tr>
</table>
	
	<hr>

<div class="footer" align="center">

	<h3>Thank you Form Amar Skill</h3>
</div>

</body>
</html>