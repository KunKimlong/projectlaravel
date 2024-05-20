Welcome to Kun Kimlong Project here is some tips to run it:

- after clone it you have to install vendor fist. command to run:
composer intsall

- after install vendor you have to create new file name .env and copy all code on file .env.example

- after copy it all do not forget to rename DB_HOST by your mysql port and  DB_DATABASE = db_final. and you will see db_final.sql in project you cloned

- after you have .env file and APP_KEY are null so you have to generate key.command to run:

php artisan key=generate

- then you have to create database name db_final

- after create database ready you have to migrate table into database. command to run:

php artisan migrate

- commad to run project:

php artisan serve

---- Thank you -----
