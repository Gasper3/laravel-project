<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PagesController extends Controller
{
    public function homepage()
    {
      return view('welcome');
    }


    public function login()
    {
      return view('login');
    }


}
