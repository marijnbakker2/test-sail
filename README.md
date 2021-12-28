# test-sail
test for laravel sail

To Install the project;
1. Clone the repo
2. CD into the project folder
3. Run following command:
```
  docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs
```
4. Run "cp .env.example .env"
5. Run "./vendor/bin/sail artisan key:generate"

To run the project inside a docker container:

"./vendor/bin/sail up -d" (-d here is to run the project in the background)

To close the running docker containers;
"/vendor/bin/sail sail down"
