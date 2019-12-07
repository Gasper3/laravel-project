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
            <a class="nav-item nav-link active" href="/">Home <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="/articles">Articels</a>
            <a class="nav-item nav-link" href="/login">Sign in</a>
          </div>
        </div>
      </nav>
    </div>
  </div>
  <div class="container">
    @yield('content')
  </div>

<script src="/js/app.js"></script>
</body>

</html>
