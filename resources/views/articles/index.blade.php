@extends('layouts.app')
@section('title', 'Articles')
@section('active', 'active')

@section('content')
<h1>Articles</h1>
@foreach($articles as $article)
<h2><a href="/articles/{{$article->id}}">{{$article->headline}}</a></h2>
@endforeach

@endsection
