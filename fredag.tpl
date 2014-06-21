<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title> {{fredag}} </title>
    <script src="https://www.google.com/jsapi?key=ABQIAAAAgrU882qSkVMRqRMaDZER4BSt7rI52RKvITD98xABKxzhZA7hIhQG-5bhqxk0BIMuTsNO7D-VndWGew" type="text/javascript"></script>
    <script language="Javascript" type="text/javascript">
        google.load("jquery", "1.6.4");
        var jqReady = function() {
            var friday = new Date().getDay() == 5;
            if (!friday) {
                $('#friday').html('nope.');
                return;
            }

            $('#rb').html('<audio>' +
                '<source src="rb.mp3">'+
                '<source src="rb.ogg">'+
            //    'no sound for u' +
                '</audio>');

            $('#friday').html('JA! FREDAG!');
            var animate = function() {
                var ticks = new Date().getTime();
                var make_color = function (cycle) { return Math.floor(Math.sin(ticks / cycle) * 128) + 127; };
                var color1 = 'rgb(' + make_color(400) +',' +make_color(155)+','+make_color(200)+')';
                var color2 = 'rgb(' + make_color(300) +',' +make_color(255)+','+make_color(290)+')';

                $('#friday').css('left', Math.sin(ticks / 550) * 500).
                             css('top', Math.sin(ticks / 200) * 200).
                             css('font-size', (Math.sin(ticks / 200) * 40) + 150);
                $('html').css('background-color', color1).css('color', color2);
            }
            setInterval( animate, 1);

            var play_music = function() {
                var audio = $('audio')[0].play();
            };

            setTimeout( play_music, 500);

        };

    google.setOnLoadCallback( function() { $(document).ready( jqReady ) } );

    </script>
    <style type="text/css">
        html, body { 
            height: 100%;
            width: 100%;
            overflow: hidden;
        }
        #friday { 
            text-align: center;
            width: 50%;
            margin:auto;
            position: relative;
            font-family: "Comic Sans MS";
        }
        #spacer { 
            min-height: 30%;
        }
    </style>
</head>
<body>
    <div id="spacer"> </div>
    <div id="friday"> </div>
    <div id="rb"> </div>
</body>
</html>
