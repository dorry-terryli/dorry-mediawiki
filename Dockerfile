FROM synctree/mediawiki

COPY LocalSettings.php /var/www/html/
#RUN chgrp www-data: /var/www/html/LocalSettings.php
COPY insertenv.sh /

#ENTRYPOINT [""]

CMD ["/insertenv.sh"]
