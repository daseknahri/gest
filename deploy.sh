#!/bin/sh

set -eu

cd "$(dirname "$0")"

echo "Starting GEST bootstrap..."

if [ ! -f .env ]; then
    cp .env.example .env
    echo "Created .env from .env.example"
fi

composer install --no-interaction --prefer-dist
npm install
npm run build

php artisan key:generate --force
php artisan migrate --seed --force
php artisan storage:link --no-interaction || true
php artisan optimize:clear

echo
echo "GEST bootstrap complete."
echo "Seeded admin: admin@gest.local / password"
