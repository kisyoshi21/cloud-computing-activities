# Multi-Tier Architecture Research Report

## Two-Tier Architecture Overview
A Two-Tier Architecture is a software application design pattern where the system is split into two distinct, communicating tiers: the application tier and the database tier. By decoupling these layers into separate environments, applications achieve greater modularity, security, and scalability.

## Tier Roles
* **The Web/Application Tier:** Serves as the user-facing layer (such as the Nextcloud interface), responsible for handling incoming HTTP requests, rendering the user interface, executing application logic, and managing user sessions.
* **The Database Tier:** Responsible for storing, managing, and retrieving persistent structured data, including user credentials, configuration parameters, and file metadata.

## Why Separate Them?
Separating the web server and the database into two independent containers prevents tight coupling, allowing each tier to scale, update, or fail independently without crashing the entire system. It also enhances security by isolating the database backend from direct public exposure while making maintenance and resource allocation much more efficient.
