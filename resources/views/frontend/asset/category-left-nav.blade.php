@php
  $ccat = App\Models\Coursecategory::orderby('id','desc')->where('status','1')->get();
         $category_count = App\Models\Coursecategory::orderby('id','desc')->where('status',1)->count();
@endphp


                  <div class="left-filtter-aria-style">
                       <h3>Categorys ( {{$category_count}} )</h3>
                       <ul>

                       	@foreach($ccat as $item )
                       	@php 
                       		$cat = App\Models\Course::where('status',1)->where('coursecategory_id',$item->id)->count();
                       	@endphp
                         	<li>
                            <a href="{{route('single.category',$item->slug)}}"> <i class="fa fa-caret-right"></i>{{$item->name}} ({{$cat}})</a>
                          </li>
                       	@endforeach
                       </ul>
                  </div>