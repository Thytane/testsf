#!/bin/bash

composer install
php bin/phpunit
php bin/console doctrine:database:create
php bin/console make:migration
php bin/console doctrine:migrations:migrate

