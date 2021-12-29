# Run a small docker container to composer install
  docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs

# wait

# Make .env file
cp .env.example .env

# Run the containers
./vendor/bin/sail up -d

# Set application key
./vendor/bin/sail artisan key:generate

# Run database migrations and seed the database
./vendor/bin/sail artisan migrate
./vendor/bin/sail artisan db:seed

# Stop sail
./vendor/bin/sail down
