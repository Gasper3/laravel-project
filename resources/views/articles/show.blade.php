@extends('layout')

@section('content')
<h1>{{$article->headline}}</h1>
<div class="">
  <p>
    {{$article->content}}
  </p>
</div>
<p>
  {{$article->author}}
</p>
<p> <a href="/articles/{{$article->id}}/edit">Edit</a> </p>
@endsection
