#!/bin/sh

sed -i '$d' /var/www/html/LocalSettings.php

echo "\
\$wgServer = \"${SERVER_ADDR:-http://test-a:9000}\";\
\$wgDBserver = \"${DB_SERVER_IP:-172.17.0.2}\";\
\$wgDBuser = \"${DB_USER:-root}\";\
\$wgDBpassword = \"${DB_PASSWORD:-abc123_}\";" >> /var/www/html/LocalSettings.php

exec /entrypoint.sh
