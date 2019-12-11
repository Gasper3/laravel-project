@extends('layouts.app')
@section('title','Create article')
@section('content')
<form method="post" action="/articles">
  {{csrf_field()}}
  <div class="form-group">
    <h1>Headline</h1>
    <input class="form-control {{$errors->has('headline') ? 'error' : ''}}" type="text" name="headline" placeholder="Article headline" value="{{old('headline')}}">
  </div>
  <div class="form-group">
    <h1>Content</h1>
    <textarea name="content" placeholder="Article content" rows=5 class="form-control {{$errors->has('content') ? 'error' : ''}}">{{old('content')}}</textarea>
  </div>
  <input type="hidden" name="author" value="{{Auth::user()->name}}">
  <button type="submit" class="btn btn-primary">Create article</button>

@include('errors')
</form>
@endsection
