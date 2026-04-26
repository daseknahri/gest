# GEST

GEST is a Laravel and Filament-based inventory management system for small teams that need a practical back-office for stock, suppliers, customers, and orders.

## What is included

- Product catalog with categories and supplier links
- Stock-aware order creation and inventory updates
- Client management
- User management with role-based access control
- Dashboard widgets and reporting basics
- Low-stock email notification flow
- Dockerfile-based deployment setup for Coolify

## Admin entry

After deployment, the back-office lives at:

```text
/admin
```

## Local development

This repo includes a local Docker Compose setup for development:

```bash
docker compose up --build
```

The local defaults expect:

- App URL: `http://localhost:8000`
- MySQL database: `gest`
- MySQL username: `gest`
- MySQL password: `gest`

## Seeded access

If you run the seeders, the sample admin user is:

- Email: `admin@gest.local`
- Password: `password`

Change that immediately outside local testing.

## Coolify deployment

Use the Dockerfile build pack and follow [docs/coolify-deploy.md](docs/coolify-deploy.md). A ready-to-paste production env template is available in [.env.coolify.example](.env.coolify.example).

## Notes

This repository started from a clean transfer into `gest` so it can evolve independently from the original reference project.
