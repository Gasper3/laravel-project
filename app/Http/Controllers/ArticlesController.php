<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\article;

class ArticlesController extends Controller
{
  public function index()
  {
    $articles = article::all();

    return view('articles.index', [
      'articles'=>$articles
    ]);
  }

  public function create()
  {
    return view('articles.create');
  }

  public function store()
  {
    $attributes = request()->validate([
      'headline' => 'required',
      'content' => 'required',
      'author' => 'required',
    ]);
    Article::create($attributes);
    return redirect('/articles');
  }

  public function edit(Article $article)
  {
    return view('articles.edit', compact('article'));
  }

  public function update(Article $article)
  {
    $article->headline = request('headline');
    $article->content = request('content');
    $article->save();

    return redirect('/articles');
  }

  public function destroy(Article $article)
  {
    $article->delete();
    return redirect('/articles');
  }

  public function show(Article $article)
  {
    return view('articles.show', compact('article'));
  }

}
