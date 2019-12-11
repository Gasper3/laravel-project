@extends('layouts.app')
@section('title', 'Edit')

@section('content')
<h1 class="border-bottom border-secondary">Edit Article</h1>
<form class="" action="/articles/{{$article->id}}" method="post">
  @method('PATCH')
  @csrf
  <div class="form-group">
    <h2>Headline</h2>
    <div class="">
      <input type="text" name="headline" class="form-control" value="{{$article->headline}}">
    </div>
  </div>

  <div class="form-group">
    <h2>Content</h2>
    <div class="">
      <textarea class="form-control" rows=10  name="content">{{$article->content}}</textarea>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Update Article</button>
</form>

<form class="mt-2" action="/articles/{{$article->id}}" method="post">
  @method('DELETE')
  @csrf
  <button class="btn btn-primary" type="submit">Delete Article</button>
</form>
@endsection
