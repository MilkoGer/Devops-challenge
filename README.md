# 🚀 Notify & Deploy – DevOps Challenge

## ✅ Overview

This project demonstrates a complete DevOps automation flow involving Infrastructure as Code (Terraform), containerization (Docker), and CI/CD (GitHub Actions). The setup builds a Docker container that runs a notification script, and Terraform provisions this container locally. When executed, the container sends a POST request with a JSON payload to a defined endpoint.

---

## 🛠️ Tools Used

- **Terraform**: Used to provision and run the Docker container locally. Chosen for its strong infrastructure-as-code capabilities and Docker provider support.
- **Docker**: Containerizes the notification script to ensure consistent execution environments.
- **Bash Script (`notify.sh`)**: Executes the HTTP POST request with the required JSON payload.
- **GitHub Actions**: Automates Docker image build and tagging on push to the repository (optional but prepared for integration).

---

## ▶️ How to Run Locally

1. **Prerequisites**:
   - Docker Desktop (running and accessible)
   - Terraform v1.0+ installed
   - Git (for version control)
   - WSL2 (for Windows users if running with Linux containers)

2. **Steps**:

```bash
# Clone the repository
git clone https://github.com/MilkoGer/Devops-challenge.git
cd Devops-challenge

# Initialize Terraform
terraform init

# Apply the infrastructure
terraform apply --auto-approve
