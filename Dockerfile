FROM spwilson2/rpi-mediawiki

COPY LocalSettings.php /var/www/html/
RUN chgrp www-shared: /var/www/html/LocalSettings.php
COPY insertenv.sh /

CMD ["/insertenv.sh && ","apache2-foreground"]

