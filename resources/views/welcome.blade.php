@extends('layouts.app')
@section('title')
@section('active', 'active')
@section('content')
<h1>Blog</h1>

@foreach($articles as $article)
<div class="article-container">
  <div class="row">
    <div class="col-3">
      <img src="https://via.placeholder.com/100" />
    </div>
    <a href="/articles/{{$article->id}}">
      <div class="col-9 d-flex justify-content-center align-items-center">
        <h3>{{$article->headline}}</h3>
      </div>
    </a>
  </div>
</div>
@endforeach
<p> <a href="/articles">Show more...</a> </p>
@endsection
