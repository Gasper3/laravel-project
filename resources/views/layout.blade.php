<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>@yield('title', 'Blog')</title>
    <link rel="stylesheet" href="/css/app.css">
</head>

<body>
  <div class="container">
    <div class="row">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-item nav-link @yield('active', 'notactive')" href="/">Home</a>
            <a class="nav-item nav-link @yield('active', 'notactive')" href="/articles">Articles</a>
            <a class="nav-item nav-link @yield('active', 'notactive')" href="/login">Sign in</a>
          </div>
        </div>
      </nav>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="mt-3 col-6">
        @yield('content')
      </div>
      <div class="col-6">

      </div>
    </div>
  </div>
<script src="/js/app.js"></script>
</body>

</html>
