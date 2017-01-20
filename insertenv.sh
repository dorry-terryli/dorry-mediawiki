#!/bin/sh

sed -i '$d' /var/www/html/LocalSettings.php
sed -i '$d' /var/www/html/LocalSettings.php 
sed -i '$d' /var/www/html/LocalSettings.php 
sed -i '$d' /var/www/html/LocalSettings.php 

echo "\
\$wgServer = \"${SERVER_ADDR:-http://test-a:9000}\";\n\
\$wgDBserver = \"${DB_SERVER_IP:-172.17.0.2}\";\n\
\$wgDBuser = \"${DB_USER:-root}\";\n\
\$wgDBpassword = \"${DB_PASSWORD:-abc123_}\";" >> /var/www/html/LocalSettings.php

apache2-foreground
#exec /entrypoint.sh
