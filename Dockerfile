FROM danibram/docker-php

ADD app.conf /etc/apache2/sites-available/000-default.conf

RUN a2ensite 000-default

WORKDIR /

RUN apt-get -yqq update

# ruby
RUN DEBIAN_FRONTEND=noninteractive apt-get -yqq install ruby-full build-essential

RUN apt-get autoclean

# compass
RUN gem install compass

# composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html

RUN chown -R www-data:www-data .
RUN composer install
RUN /usr/sbin/apache2 -D FOREGROUND