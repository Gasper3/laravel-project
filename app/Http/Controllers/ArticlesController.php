<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\article;


class ArticlesController extends Controller
{
  public function articles()
  {
    $articles = article::all();

    return view('articles', [
      'articles'=>$articles
    ]);
  }

  public function createArticle()
  {
    return view('articles.create');
  }

  public function articleStore()
  {
    $article = new article();
    $article->headline = request('headline');
    $article->content = request('content');
    $article->author = request('author');
    $article->save();

    return redirect('/articles');
  }


}
