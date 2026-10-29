# Corporate Handoff Manual: Enterprise Cloud Infrastructure
**Prepared by:** Cloud Architecture Division  
**Target Audience:** Corporate IT Systems Administrators & Operations Team

---

## 1. System Overview & Architecture
This enterprise cloud stack delivers a high-availability, containerized **WordPress and MySQL** environment orchestrated via Docker Compose on Ubuntu Server. Data durability is guaranteed through isolated persistent Docker volumes, ensuring complete state recovery across system reboots or container termination.

---

## 2. Deployment Procedures
To spin up the production environment from scratch on a fresh Ubuntu Server:

1. **Clone or Transfer Repository Files:**
   Ensure `docker-compose.yml` and `automation-script.sh` are present in your target deployment directory (e.g., `/opt/enterprise-stack`).

2. **Initialize Infrastructure Stack:**
   Execute the Docker Compose build and deployment command in detached mode:
   ```bash
   docker-compose up -d
