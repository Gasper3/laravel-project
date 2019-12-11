@extends('layouts.app')
@section('title')
@section('active', 'active')
@section('content')
<h1>Blog</h1>

@foreach($articles as $article)
<div class="article-container">
  <div class="row">
    <div class="col-3">
      <img src="https://picsum.photos/100" />
    </div>
    <div class="col-9 d-flex justify-content-center align-items-center">
      <a href="/articles/{{$article->id}}">
          <h3>{{$article->headline}}</h3>
      </a>
    </div>
  </div>
</div>
@endforeach
<p> <a href="/articles">Show more...</a> </p>
@endsection
