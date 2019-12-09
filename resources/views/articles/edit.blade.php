@extends('layout')
@section('title', 'Edit')

@section('content')
<h1>Edit Article</h1>
<form class="" action="/articles/{{$article->id}}" method="post">
  @method('PATCH')
  @csrf
  <div class="">
    <h2>Headline</h2>
    <div class="">
      <input type="text" name="headline" value="{{$article->headline}}">
    </div>
  </div>

  <div class="">
    <h2>Content</h2>
    <div class="">
      <textarea  name="content">{{$article->content}}</textarea>
    </div>
  </div>
  <button type="submit" class="">Update Article</button>
</form>

<form class="mt-2" action="/articles/{{$article->id}}" method="post">
  @method('DELETE')
  @csrf
  <button type="submit">Delete Article</button>
</form>
@endsection
