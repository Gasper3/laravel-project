<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function homepage()
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
