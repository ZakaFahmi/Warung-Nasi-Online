<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Admin Login">
    <link rel="icon" href="../../../favicon.ico">

    <title>Warung Sunda Ibu Nana | www.hakkoblogs.com</title>

    <!-- Bootstrap core CSS -->
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="../signin.css" rel="stylesheet">
    
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- <script src="../assets/js/ie-emulation-modes-warning.js"></script> -->
    <script src="../dist/js/jquery-1.9.1.js"></script>
    <script src="../dist/js/bootstrap.js"></script>
    <!-- IE10 vie../wport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../assets/js/ie10-viewport-bug-workaround.js"></script> -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body background="../img/swirl_pattern.png">

    <div class="container">
  <!-- role="form" -->
      <form class="form-signin" method="post" action="./proseslogin.php">
        <h2 class="form-signin-heading">
          <center>
            <span class="glyphicon glyphicon-th-large"></span>
            Login Admin</center>
          </h2>
        <input name="username" id="username" type="input" class="form-control" placeholder="Username" autocomplete="off" required autofocus />
        <input name="password" id="password" type="password" class="form-control" placeholder="Password" autocomplete="off" required />
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
    </div>
    <!-- /container -->
  </body>
</html>
