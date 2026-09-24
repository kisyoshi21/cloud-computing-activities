# Cloud Storage Types Research Report

## Comparison Table

| Storage Type | Description (How it stores data) | Primary Use Case | Cloud Provider Example |
| :--- | :--- | :--- | :--- |
| **Block Storage** | Breaks data down into raw blocks with unique identifiers, mounted as a hard drive. | High-performance databases, virtual machine boot volumes. | AWS EBS (Elastic Block Store) |
| **File Storage** | Organizes and stores data in a hierarchical structure of files and folders via shared network protocol. | Shared network file shares, collaborative team documents. | AWS EFS (Elastic File System) |
| **Object Storage** | Stores data as discrete objects bundled with metadata and unique identifiers in a flat address space. | Unstructured data storage, backups, media files, photo-sharing apps. | AWS S3 (Simple Storage Service) |

## Client Migration Summary
Object storage is the ideal solution for your photo-sharing application because it is specifically designed to scale massively and cost-effectively handle millions of unstructured media files like images and videos. Unlike traditional block storage that is bound to a single server or file storage that suffers from performance bottlenecks in deep directory trees, object storage uses a flat namespace with rich metadata, allowing lightning-fast retrieval and virtually limitless scalability without server management overhead.
