# 🐳 Laravel Docker Environment

![Laravel](https://img.shields.io/badge/laravel-%23FF2D20.svg?style=for-the-badge&logo=laravel&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300000f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)

A complete Docker-based development environment for Laravel applications with PHP-FPM, Nginx, MySQL, and Redis.

## ✨ Features

- 🚀 **Laravel 11** with PHP 8.2
- 🐘 **PHP-FPM** for optimal performance
- 🌐 **Nginx** web server
- 🗄️ **MySQL 8.0** database
- 🔄 **Redis** for caching and sessions
- 📦 **Composer** for dependency management
- ⚡ **Hot reload** for development
- 🔧 **Easy configuration** and setup

## 📋 Prerequisites

Make sure you have the following installed on your machine:

- [Docker](https://www.docker.com/get-started) (v20.10+)
- [Docker Compose](https://docs.docker.com/compose/install/) (v2.0+)
- [Git](https://git-scm.com/)

## 🚀 Quick Start

### 1. Clone or Create Project Directory

Create a new project directory or clone an existing repository. Navigate to your project folder and prepare it for Docker setup.

### 2. Create Docker Configuration Files

Set up your Docker environment by creating the necessary configuration files in your project root. You'll need a docker-compose.yml file to orchestrate your services, a Dockerfile for your PHP application container, and an Nginx configuration file for web server setup.

### 3. Create Nginx Configuration

Create a docker/nginx directory in your project root and add the Nginx configuration file. This will handle web requests and proxy them to your PHP-FPM container.

### 4. Create Laravel Project

Use the Composer service to create a new Laravel project or install dependencies for an existing one. The Docker setup includes a dedicated Composer container that handles PHP dependency management with platform requirement ignoring for Docker compatibility.

### 5. Set Up Environment

Copy the environment example file and configure it for your Docker setup. Generate your application key and update database and Redis configurations to match your Docker service names and credentials.

### 6. Build and Start Services

Build your Docker images and start all services in detached mode. Run database migrations and optimize your Laravel application by caching configuration and routes.

## 🌐 Access Your Application

Once everything is set up and running, your Laravel application will be available at **http://localhost:8080**. The database can be accessed on port 3306, and Redis is available on port 6379.

## 🛠️ Common Commands

### Docker Management

- Start all services in background
- Stop all services
- View logs for all services
- View logs for specific service
- Rebuild containers after configuration changes

### Laravel Commands

- Run Artisan commands through the app container
- Execute database migrations
- Create database seeders
- Clear application cache
- Generate application key
- Install Composer dependencies

### Database Operations

- Access MySQL shell
- Run database migrations
- Seed database with sample data
- Reset database completely

## 📁 Project Structure

Your project will have the following structure:

- **docker/** - Contains Docker configuration files
- **docker/nginx/** - Nginx web server configuration
- **app/** - Laravel application code
- **database/** - Database migrations and seeders
- **public/** - Web-accessible files
- **resources/** - Views, assets, and language files
- **storage/** - Application storage (logs, cache, uploads)
- **vendor/** - Composer dependencies

## 🔧 Configuration

### Environment Variables

Configure your application through the .env file. Key settings include database connection details, Redis configuration, application URL, and debug settings.

### Database Configuration

The MySQL service is configured with a dedicated database and user for your Laravel application. Connection details are set to work seamlessly with the Docker network.

### Redis Configuration

Redis is configured for caching and session storage, providing improved performance for your Laravel application.

## 🐛 Troubleshooting

### Common Issues

**Port Conflicts**: If ports 8080, 3306, or 6379 are already in use, modify the port mappings in docker-compose.yml.

**Permission Issues**: Ensure proper file permissions for storage and bootstrap/cache directories. The Docker setup handles most permission issues automatically.

**Database Connection**: Verify that your .env file has the correct database host (should be 'db' not 'localhost').

**Composer Issues**: Use the --ignore-platform-reqs flag when running Composer commands to avoid platform compatibility issues in Docker.

### Logs and Debugging

Access container logs to diagnose issues. Each service generates its own logs that can be viewed separately or combined.

## 📚 Additional Resources

- [Laravel Documentation](https://laravel.com/docs)
- [Docker Documentation](https://docs.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Nginx Documentation](https://nginx.org/en/docs/)

## 🤝 Contributing

Feel free to contribute to this setup by submitting issues or pull requests. Improvements to the Docker configuration, documentation, or additional services are welcome.

## 📄 License

This Docker setup is open-source and available under the MIT License. Laravel framework is also licensed under MIT.

---

**Happy Coding! 🚀**

_Built with ❤️ for the Laravel community_
