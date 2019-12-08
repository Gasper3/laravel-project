@extends('layout')
@section('title', 'Articles')

@section('content')
<h1>Articles</h1>
@foreach($articles as $article)
<h2>{{$article->headline}}</h2>
@endforeach

@endsection
