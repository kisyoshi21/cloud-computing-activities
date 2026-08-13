#  Build the Cloud Infrastructure Blueprint

##  Overview
This laboratory activity focuses on investigating cloud infrastructure components and understanding how compute, storage, networking, and identity services work together in a cloud environment. Through hands-on exploration of a live cloud server, we bridged theoretical cloud concepts with real-world infrastructure configurations.

## Objectives
- Investigate a Linux cloud environment using system profiling tools.
- Identify and document major cloud infrastructure components (Compute, Storage, Networking, OS).
- Compare equivalent core infrastructure services across AWS, Microsoft Azure, and Google Cloud Platform.
- Design a simple, comprehensive cloud infrastructure architecture diagram.
- Practice professional technical documentation using Markdown.
- Maintain and structure a professional GitHub Cloud Computing Portfolio.

## Cloud Infrastructure Components
* **Compute Resources:** Virtualized processing units (vCPUs/cores) that execute application logic and runtime instructions.
* **Storage Resources:** Persistent block storage volumes and file systems responsible for retaining data and system files.
* **Networking Resources:** Pathways and routing interfaces that manage internal and external communication securely.
* **Operating System:** The foundational software layer (Ubuntu 24.04.4 LTS) managing hardware resources and system services.

## Tools Used
* **KillerCoda Playground:** Cloud-based interactive Linux environment used for server investigation.
* **Linux CLI Utilities:** Built-in terminal commands for hardware and software profiling.
* **Excalidraw:** Diagramming tool used to design the cloud infrastructure blueprint.
* **GitHub:** Version control and portfolio hosting platform.
* **Markdown:** Lightweight markup language used for authoring technical documentation.

## Linux Commands Executed
During the cloud server investigation, the following commands were executed:
* `cat /etc/os-release` — Checked the operating system release and version details.
* `uname -r` — Displayed the active Linux kernel version.
* `lscpu | grep -E "Model name|CPU(s)"` — Inspected CPU model specifications and core allocation.
* `free -h` — Evaluated total and available system memory (RAM) and swap space.
* `lsblk` — Listed available block storage devices and partitions (`vda`).
* `df -h` — Displayed disk space usage and mounted file systems (`/`, `/boot`, etc.).
* `hostname` & `hostname -I` — Identified the server hostname and network IP addresses.

## Skills Learned
* Profiling and extracting hardware/software specifications from a cloud-based Linux environment.
* Mapping bare-metal Linux parameters directly to conceptual cloud infrastructure counterparts.
* Cross-referencing equivalent core cloud services across major hyperscalers (AWS, Azure, GCP).
* Designing structural cloud architecture diagrams incorporating users, gateways, VPCs, compute, and storage.
* Writing structured, professional technical documentation and reports using Markdown.

## Challenges Encountered
* Ensuring precise correlation between low-level Linux file system mounts and abstract cloud storage volumes.
* Structuring comprehensive multi-cloud comparison data into clean, readable Markdown tables.
* Aligning architectural diagram elements to accurately reflect a secure, multi-tier cloud deployment workflow.
