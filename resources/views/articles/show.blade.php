@extends('layouts.app')
@section('content')
<h1>{{$article->headline}}</h1>
<div class="">
  <?php $paragraphs = explode(PHP_EOL, $article->content); ?>
  @foreach($paragraphs as $paragraph)
      <p>{{{ $paragraph }}}</p>
  @endforeach
</div>
<p>
  {{$article->author}}
</p>

@if(Auth::check())
<p> <a href="/articles/{{$article->id}}/edit">Edit</a> </p>
@endif

{{-- Comments Section --}}
@if($article->comments->count())
<h2>Comments({{$article->comments->count()}})</h2>
<div class="comments">
  @foreach($article->comments as $comment)
    <p>{{$comment->content}}</p>
    <div class="">
      {{$comment->author}}
    </div>
  @endforeach
</div>
@endif
@if(Auth::check() && $article->author != Auth::user()->name)
<form class="" action="/articles/{{$article->id}}/comments" method="post">
  @csrf
  <h3>New Comment</h3>
  <input type="text" name="comment" placeholder="Comment" value="{{old('comment')}}">
  <input type="hidden" name="author" placeholder="Author" value="{{Auth::user()->name}}">
  <button type="submit" name="">AddComment</button>
@include('errors')
</form>
@endif

@endsection
