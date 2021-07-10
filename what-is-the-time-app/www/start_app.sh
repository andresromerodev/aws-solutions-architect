#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>WhatIsTheTime</title>
    </head>
    <body>
        <h1 style="color: blue">WhatisTheTime.com</h1>
        <h2>The time right now is:</h2>
        <h3 id="time-now"></h3>
        <small>AWS EC2 Instance: $(hostname -f)</small>
    </body>

    <script>
        var timeNow = document.getElementById('time-now');
        timeNow.innerText = new Date().toISOString();
    </script>
</html>
" > /var/www/html/index.html