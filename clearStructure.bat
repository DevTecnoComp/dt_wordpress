@echo off
setlocal

REM Crear estructura de directorios si no existen
if not exist config\php (
    mkdir config\php
    echo [PHP] > config\php\php.ini
    echo display_errors = On >> config\php\php.ini
    echo log_errors = On >> config\php\php.ini
    echo error_log = /var/log/php_errors.log >> config\php\php.ini
    echo max_execution_time = 30 >> config\php\php.ini
    echo memory_limit = 512M >> config\php\php.ini
    echo upload_max_filesize = 512M >> config\php\php.ini
    echo post_max_size = 512M >> config\php\php.ini
    echo. >> config\php\php.ini
    echo [Date] >> config\php\php.ini
    echo date.timezone = "America/Santiago" >> config\php\php.ini
)

if not exist initdb-scripts (
    mkdir initdb-scripts
)

if not exist log\apache (
    mkdir log\apache
) else (
    rmdir /s /q log\apache
    mkdir log\apache
)

if not exist log\mysql (
    mkdir log\mysql
) else (
    rmdir /s /q log\mysql
    mkdir log\mysql
)

if not exist mysql_data (
    mkdir mysql_data
) else (
    rmdir /s /q mysql_data
    mkdir mysql_data
)

if not exist wordpress_data (
    mkdir wordpress_data
) else (
    rmdir /s /q wordpress_data
    mkdir wordpress_data
)

echo Estructura de directorios creada y carpetas limpiadas.
endlocal
pause
