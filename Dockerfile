FROM spwilson2/rpi-mediawiki

COPY LocalSettings.php /var/www/html/
RUN chgrp www-data: /var/www/html/LocalSettings.php
COPY insertenv.sh /

CMD ["/insertenv.sh && ","apache2-foreground"]

