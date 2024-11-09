<!DOCTYPE html>
<html lang="en">

<head>
  <title>BANG</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=0.56, maximum-scale=3.0, minimum-scale=0.46">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  <style>
    header {
      display: flex;
      top: 20px;
      left: 0;
      width: 88%;
      padding: 20px 100px;
      /* background: sienna; */
      justify-content: space-between;
      align-items: center;
      z-index: 99;
    }

    .bang{
      font-size: 2em;
      color: wheat;
      user-select: none;
    }

    .navigation a{
    position: relative;
    font-size: 1.1em;
    color: wheat;
    text-decoration: none;
    font-weight: 500;
    margin-left: 40px;
}

    .navigation a::after {
      content: '';
      position: absolute;
      left: 0;
      bottom: -10px;
      width: 100%;
      height: 3px;
      background: whitesmoke;
      border-radius: 5px;
      transform-origin: right;
      transform: scaleX(0);
      transition: transform .5s;
    }

    .navigation a:hover::after {
      transform-origin: left;
      transform: scaleX(1);
    }
  </style>
</head>

<body>
  <header id="header">
    <h2 class="bang">BANG Railways</h2>
    <nav class="navigation">
      <a href="index2.html">Home</a>
    </nav>
  </header>

</body>

</html>
