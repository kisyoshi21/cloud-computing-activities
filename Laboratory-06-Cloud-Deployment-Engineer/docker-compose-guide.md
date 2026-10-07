# Docker Compose Technical Guide

## YAML Configuration Analysis
* **What does the `services:` block do?**  
  The `services:` block defines the individual containers that will make up the multi-container application stack, specifying their individual images, environment variables, and network configurations.
* **How did the Nextcloud app container know how to find the database container?**  
  The Nextcloud container located the database via the environment variable `MYSQL_HOST=database`, utilizing Docker Compose's built-in automatic DNS resolution where service names map directly to container network addresses.
* **What is the difference between `docker run` and `docker-compose up -d`?**  
  `docker run` launches a single container with manual command-line arguments, whereas `docker-compose up -d` reads a declarative YAML blueprint to provision, link, and run an entire multi-container application stack simultaneously in the background.

## Commands Executed
* `mkdir nextcloud-deployment && cd nextcloud-deployment` - Creates and enters the project directory.
* `nano docker-compose.yml` - Opens the terminal text editor to author the configuration file.
* `docker-compose up -d` - Deploys the multi-container application stack in detached mode.
* `docker-compose ps` - Verifies the running status of container services.
* `docker-compose down` - Gracefully stops and removes the container infrastructure stack.
