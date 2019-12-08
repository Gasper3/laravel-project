@extends('layout')
@section('title','Create article')
@section('content')
<form method="post" action="/articles">
  {{csrf_field()}}
  <div class="">
    <input type="text" name="headline" placeholder="Article headline">
  </div>
  <div class="">
    <textarea name="content" placeholder="Article content"></textarea>
  </div>
  <div class="">
    <input type="text" name="author" placeholder="Article author">
  </div>
  <button type="submit" />Create article</button>
</form>
@endsection
