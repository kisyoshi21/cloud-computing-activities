# Cloud Infrastructure Components

## 1. Compute Resources
* **Description & Purpose:** Compute resources execute processing logic, run application tasks, and handle runtime instructions.
* **Importance in Cloud:** They serve as the scalable backbone (virtual machines or containers) that power workloads dynamically based on traffic.
* **Linux Environment Correlation:** Represented by the virtual CPU and execution threads inspected via `lscpu`.

## 2. Storage Resources
* **Description & Purpose:** Storage components preserve, organize, and retrieve data, system files, and application logs.
* **Importance in Cloud:** They guarantee durability, block-level volume sizing, and object scalability for enterprise databases and files.
* **Linux Environment Correlation:** Mapped to the local block storage volumes and root partitions (`/dev/vda1`) inspected using `lsblk` and `df -h`.

## 3. Networking Resources
* **Description & Purpose:** Networking components manage communication pathways, routing, and access security between nodes and external clients.
* **Importance in Cloud:** They isolate environments securely via Virtual Private Clouds (VPCs) and control ingress/egress data transmission.
* **Linux Environment Correlation:** Reflected through the network configuration and interfaces assigned to the KillerCoda instance.

## 4. Operating System
* **Description & Purpose:** The operating system acts as the underlying platform managing hardware allocation and system software services.
* **Importance in Cloud:** It provides a standardized layer for application runtimes across hypervisors and containerized nodes.
* **Linux Environment Correlation:** The Ubuntu 24.04.4 LTS distribution running the active kernel environment.
