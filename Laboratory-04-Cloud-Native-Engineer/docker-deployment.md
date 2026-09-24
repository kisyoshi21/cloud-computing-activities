# Docker Deployment & Lifecycle Documentation

## Deployed Commands Summary
* `docker pull nginx`: Downloads the official Nginx web server image from Docker Hub.
* `docker run -d --name my-nginx -p 8080:80 nginx`: Starts an Nginx container in detached mode, naming it `my-nginx` and mapping host port 8080 to container port 80.
* `curl http://localhost:8080`: Sends a local HTTP request to verify that the Nginx server is actively responding.

## Container Lifecycle Commands
1. `docker ps`: Lists all currently running containers to verify their active status.
2. `docker stop my-nginx`: Gracefully halts the execution of the running `my-nginx` container.
3. `docker ps`: Verifies that the container is no longer running in the active list.
4. `docker rm my-nginx`: Completely removes the stopped container instance from disk to free up resources.
