@extends('layouts.app')
@section('content')

{{-- Article section --}}
<h1 class="display-4">{{$article->headline}}</h1>
<img src="https://picsum.photos/200" class="article-img rounded float-right">

<div class="article-content">
  <?php $paragraphs = explode(PHP_EOL, $article->content); ?>
  @foreach($paragraphs as $paragraph)
      <p class="lead">{{{ $paragraph }}}</p>
  @endforeach
</div>
<div class="article-author my-2 clearfix">
  <h2>Author</h2>
  <h4>{{$article->author}}</h4>
</div>


{{-- Edit Button --}}
@if(Auth::check())
<form action="/articles/{{$article->id}}/edit" class="row justify-content-end">
  <button type="submit" class="btn btn-primary">Edit Article</button>
</form>

@endif

{{-- Comments Section --}}
@if($article->comments->count())
<div class="container mt-3 p-0">
  <div class="row">
    <div class="col-6">
      <h2>Comments({{$article->comments->count()}})</h2>
      @foreach($article->comments as $comment)
          <div class="row mx-auto p-2 comment">
              <div class="col-10 comment-content">
                <p>{{$comment->content}}</p>
              </div>
              <div class="col-2">
                {{$comment->author}}
              </div>
          </div>
      @endforeach
      </div>
    @endif


    {{-- Add comment --}}
    @if(Auth::check() && $article->author != Auth::user()->name)
      <div class="col-6">
        <form action="/articles/{{$article->id}}/comments" method="post">
          @csrf
          <h3>New Comment</h3>
          <div class="form-group">
            <input class="form-control" type="text" name="comment" placeholder="Comment" value="{{old('comment')}}">
          </div>
          <input type="hidden" name="author" placeholder="Author" value="{{Auth::user()->name}}">
          <button type="submit" class="btn btn-primary">Add New Comment</button>
        @include('errors')
        </form>
      </div>
    @endif
  </div>
</div>

@endsection
