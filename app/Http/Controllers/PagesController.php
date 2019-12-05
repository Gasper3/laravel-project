<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function home()
    {
      return view('welcome');
    }

    public function articles()
    {
      return view('articles');
    }

    public function login()
    {
      return view('login');
    }

}
