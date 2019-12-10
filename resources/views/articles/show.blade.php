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

@if($article->comments->count())
<h2>Comments({{$article->comments->count()}})</h2>
<div class="comments">
  @foreach($article->comments as $comment)
    <p>{{$comment->content}}</p>
  @endforeach
</div>
@endif

<form class="" action="/articles/{{$article->id}}/comments" method="post">
  @csrf
  <h3>New Comment</h3>
  <input type="text" name="comment" placeholder="Comment" value="{{old('comment')}}">
  <input type="text" name="author" placeholder="Author" value="{{old('author')}}">
  <button type="submit" name="">AddComment</button>

@include('errors')
</form>

@endsection
