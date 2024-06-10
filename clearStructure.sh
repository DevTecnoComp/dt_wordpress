#!/bin/bash

# Crear estructura de directorios si no existen
if [ ! -d "config/php" ]; then
    mkdir -p config/php
    echo "[PHP]" > config/php/php.ini
    echo "display_errors = On" >> config/php/php.ini
    echo "log_errors = On" >> config/php/php.ini
    echo "error_log = /var/log/php_errors.log" >> config/php/php.ini
    echo "max_execution_time = 30" >> config/php/php.ini
    echo "memory_limit = 512M" >> config/php/php.ini
    echo "upload_max_filesize = 512M" >> config/php/php.ini
    echo "post_max_size = 512M" >> config/php/php.ini
    echo "" >> config/php/php.ini
    echo "[Date]" >> config/php/php.ini
    echo "date.timezone = \"America/Santiago\"" >> config/php/php.ini
fi

[ ! -d "initdb-scripts" ] && mkdir initdb-scripts

if [ -d "log/apache" ]; then
    rm -rf log/apache
fi
mkdir -p log/apache

if [ -d "log/mysql" ]; then
    rm -rf log/mysql
fi
mkdir -p log/mysql

if [ -d "mysql_data" ]; then
    rm -rf mysql_data
fi
mkdir -p mysql_data

if [ -d "wordpress_data" ]; then
    rm -rf wordpress_data
fi
mkdir -p wordpress_data

echo "Estructura de directorios creada y carpetas limpiadas."
