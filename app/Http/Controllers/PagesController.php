<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\article;

class PagesController extends Controller
{
    public function homepage()
    {
      $articles = Article::limit(5)->get();
      return view('welcome', compact('articles'));
    }


    public function login()
    {
      return view('login');
    }

    public function passwordReset($value='')
    {
      
    }

}
