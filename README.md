# Najla PHP Starterkit

A simple PHP starterkit for building web applications with a native PHP backend and a modern frontend.

## Features

- Native PHP backend
- Modern frontend with Vite
- Docker for development environment
- Database migrations with dbmate
- Mailhog for testing emails
- Adminer for database management

## Requirements

- PHP 8.2 or higher
- Composer
- Node.js (if you need to install Vite)
- npm (if you need to install Vite)

## Recommended development tools

- Docker
- Git

## Installation

```bash
composer create-project macnoc/najla
```

### Install Vite

If you need to install Vite, run the following command:

```bash
npm create vite@latest vite
```

## Development

```bash
make dev # Start the development environment
make migrate # Run database migrations
make migrate-rollback # Rollback the last migration
make migrate-new name="name" # Create a new migration
make clean # Stop the development environment
make open # Open the development environment in the browser
make open-mail # Open the mailhog in the browser
make open-adminer # Open the adminer in the browser
```

