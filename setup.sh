# Checkout master branch
git checkout master

# Run a small docker container to composer install
  docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs

# Make .env file
cp .env.example .env

# Run the containers
sail up -d

# Set application key
sail artisan key:generate

# Run database seeds
sail artisan db:seed
