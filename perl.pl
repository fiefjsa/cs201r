#!/usr/bin/perl -w
print "Content-Type: text/html\n\n";
print <<HTML;
<!DOCTYPE html>
<html lang=\"en\">
<head>  <meta charset=\"utf-8\">
  <title>Hello World from Perl by Koding</title>
  <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">
  <link rel=\"stylesheet\" href=\"//koding.com/hello/css/style.css\">
  <!--[if IE]>
          <script src=\"//html5shiv.googlecode.com/svn/trunk/html5.js\"></script>
  	<![endif]-->
  <link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body class=\"perl\">
  <div id=\"container\">
    <div id=\"main\" role=\"main\"  class=\"hellobox\" >
<header><a href=\"http://koding.com\">Koding.com</a></header>
    <h1>Hello World!</h1>
    <h2>From Perl $^V</h2>
   </div>
<nav>
	<ul>
    <li><a href="index.html">HTML</a></li>
		<li><a href=\"php.php\">PHP</a></li>
		<li><a href=\"python.py\">Python</a></li>
		<li><a class=\"active\" href=\"perl.pl\">Perl</a></li>
		<li><a href=\"ruby.rb\">ruby</a></li>
	</ul>    
</nav>
<footer>
	<h4>This is an example page running Perl on your Koding Virtual Machine (VM).
	<p>
		You can create your own Perl based "Hello World" program by following this <a href="http://learn.koding.com/guides/hello-world/perl/" target=_blank>simple guide</a> over at Koding University.
	</p>
	</h4>
	<p><a href="https://twitter.com/koding" target=_blank>Koding on Twitter</a> | <a href="https://facebook.com/koding" target=_blank>Koding on Facebook</a></p>
</footer>
</div> 
</body>
</html>
HTML
exit;