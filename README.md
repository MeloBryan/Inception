# Inception

A System Administration project from **42 School** aimed at broadening knowledge of system administration through virtualization using **Docker**.

## Architecture

This project sets up a small, secure, multi-container web infrastructure using **Docker Compose** (without relying on pre-built official service images):

- **NGINX**: Serves as the sole entry point into the infrastructure via **HTTPS (TLSv1.2 / TLSv1.3)** on port `443`.
- **WordPress + PHP-FPM**: Runs the website backend without a web server included.
- **MariaDB**: Handles the database layer in an isolated container.
- **Volumes**: Two persistent Docker volumes store the WordPress files and the database data on the host machine.
- **Network**: A dedicated Docker bridge network connects the containers internally.

## Usage

1. Configure your environment variables in `srcs/.env`.
2. Build and start the infrastructure:
   ```bash
   make
