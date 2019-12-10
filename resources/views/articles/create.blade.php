@extends('layouts.app')
@section('title','Create article')
@section('content')
<form method="post" action="/articles">
  {{csrf_field()}}
  <div class="">
    <input class="{{$errors->has('headline') ? 'error' : ''}}" type="text" name="headline" placeholder="Article headline" value="{{old('headline')}}">
  </div>
  <div class="">
    <textarea name="content" placeholder="Article content" class="{{$errors->has('content') ? 'error' : ''}}">{{old('content')}}</textarea>
  </div>
  <input type="hidden" name="author" value="{{Auth::user()->name}}">
  <button type="submit" />Create article</button>

@include('errors')
</form>
@endsection
