<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\article;
use App\Comments;

class ArticleCommentsController extends Controller
{
    public function store(Article $article)
    {
      request()->validate(['comment'=>'required']);

      Comments::create([
        'content' => request('comment'),
        'author' => request('author'),
        'article_id' => $article->id,
      ]);
      return back();
    }
}
