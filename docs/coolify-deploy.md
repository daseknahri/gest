# Coolify deployment for GEST

This repository is prepared for Coolify using the `Dockerfile` build pack.

## App settings

- Build pack: `Dockerfile`
- Base directory: `/`
- Port exposes: `80`

## Required environment variables

Set these in Coolify:

```env
APP_NAME=GEST
APP_ENV=production
APP_DEBUG=false
APP_URL=https://your-domain.example
APP_KEY=base64:GENERATE_A_REAL_KEY

LOG_CHANNEL=stack
LOG_LEVEL=info

DB_CONNECTION=mysql
DB_HOST=your-mysql-host
DB_PORT=3306
DB_DATABASE=gest
DB_USERNAME=gest
DB_PASSWORD=your-password

CACHE_DRIVER=file
FILESYSTEM_DISK=public
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MAIL_MAILER=log
MAIL_FROM_ADDRESS=no-reply@your-domain.example
MAIL_FROM_NAME="${APP_NAME}"
```

## Post-deployment command

For a normal deploy:

```sh
php artisan migrate --force && php artisan storage:link --no-interaction || true
```

For first-time evaluation with sample data:

```sh
php artisan migrate --seed --force && php artisan storage:link --no-interaction || true
```

Do not keep reseeding once you start storing real inventory data.

## First login for seeded demo data

- URL: `https://your-domain.example/admin`
- Email: `admin@gest.local`
- Password: `password`

Rotate that account immediately in any shared or public environment.
