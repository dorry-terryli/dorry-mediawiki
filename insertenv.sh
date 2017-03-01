#!/bin/sh

sed -i '$d' /var/www/html/LocalSettings.php
sed -i '$d' /var/www/html/LocalSettings.php
sed -i '$d' /var/www/html/LocalSettings.php
sed -i '$d' /var/www/html/LocalSettings.php

echo "\
\$wgServer = \"${SERVER_ADDR:-http://test-a:9000}\";\n\
\$wgDBserver = \"${MEDIAWIKI_DB_HOST:-172.17.0.2}\";\n\
\$wgDBuser = \"root\";\n\
\$wgDBpassword = \"${MEDIAWIKI_DB_PASSWORD:-abc123_}\";" >> /var/www/html/LocalSettings.php

apache2-foreground
#exec /entrypoint.sh
