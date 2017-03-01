FROM synctree/mediawiki

COPY LocalSettings.php /var/www/html/
#RUN chgrp www-data: /var/www/html/LocalSettings.php
COPY insertenv.sh /
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/insertenv.sh"]
