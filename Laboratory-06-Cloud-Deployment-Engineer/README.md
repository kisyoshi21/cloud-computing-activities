# Laboratory 6: The Cloud Deployment Engineer

- **Name:** BAUTISTA, RAINIER L.
- **Course and Section:** BSIT-3M
- **Repository:** Cloud Computing Portfolio

---

## Mission Overview
In this mission, we transitioned from manual single-container deployments to Infrastructure as Code (IaC) using Docker Compose. The task involved deploying a multi-tier enterprise private cloud storage system (Nextcloud) backed by a MariaDB database container on an Ubuntu KillerCoda environment.

## Objectives
- Explain the concept of a multi-tier application architecture.
- Understand the purpose and structure of a `docker-compose.yml` file.
- Use the Linux `nano` text editor to create and configure infrastructure files.
- Deploy, verify, and tear down a multi-container stack using Docker Compose.
- Document deployment procedures and Infrastructure as Code (IaC) principles using Markdown.

## Commands Executed
```bash
# Create and move into the project directory
mkdir nextcloud-deployment
cd nextcloud-deployment

# Create and edit the Docker Compose configuration file
nano docker-compose.yml

# Deploy the multi-container stack in the background
docker-compose up -d

# Verify running containers
docker-compose ps

# Gracefully tear down and remove the container stack
docker-compose down
