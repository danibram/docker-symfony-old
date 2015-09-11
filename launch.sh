#!/bin/bash -e

composer install

/usr/sbin/apache2 -D FOREGROUND