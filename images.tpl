<!DOCTYPE html>
<html>
    <head>
        <title>Images</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    </head>
    <body>
        <div class="container">
        %for each in images:
            <div class="well">
                <h1> {{each}} </h1>
                <a href="{{each}}">
                    <img src="{{each}}" alt="{{each}}">
                </a>
            </div>
        %end
        </div>
    </body>
</html>

