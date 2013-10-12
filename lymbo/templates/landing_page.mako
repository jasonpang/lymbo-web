<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/static/images/favicon.png">

    <title>Lymbo</title>

    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/static/css/site.css" rel="stylesheet">

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="/static/js/html5shiv.js"></script>
      <script src="/static/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container wrapper">

      <div class="starter-template">
        <div class="title">Lymbo</div>
        <div class="subtitle">sleep patterns tracker &mdash; alarm clock &mdash; lucid dreaming app</div>
      </div>

      <form class="form-signin" method="post">
        <input type="text" name="email" class="form-control" placeholder="email address" autofocus>
        <button class="btn btn-lg btn-primary btn-block" type="submit">subscribe</button>
      </form>
      <div style="clear: both"></div>
        %if email_send_attempt and email_send_success:
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><strong>Thanks!</strong> You'll be notified when the Android version comes out.</h4>
                </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        %elif email_send_attempt and not email_send_success:
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><strong>Yikes!</strong> You can't subscribe with that email.</h4>
             </div>
            </div>
            <div class="col-md-3"></div>
        </div>
        %endif
    </div> <!-- /container -->

    <footer>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="centertext">
                    &copy; 2013 Jason Pang. jason@lymboapp.com
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../assets/js/jquery.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
  </body>
</html>
