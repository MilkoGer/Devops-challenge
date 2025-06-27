# 🚀 DevOps Engineer Coding Challenge – "Notify & Deploy"

## 📘 Goal

Create a self-contained repository that demonstrates your ability to use Infrastructure as Code, CI/CD pipelines, and containerization — with local provisioning and automated API interaction.
🧩 Task Overview

You are tasked with creating a DevOps automation setup that:

1. Creates a script that sends a notification to a specific API (that will be executed as a Docker application).
2. Uses CI/CD (GitHub Actions, GitLab CI, or another tool) to build and version a Docker image.
3. Uses Terraform to provision and run the Docker container locally.

## 🔄 Required Fulfillment Order

Write a script (in Bash or Python) that will run inside a Docker container and send the following payload via POST request to:

https://varengold.io/notification 

Payload JSON:

```json
{
  "timestamp": "<build timestamp>",
  "deployment": "<version of the image>",
  "custom_variable": "<your own defined value>"
}
```

Create a Dockerfile to package this script into an image.

Set up a CI job (e.g., GitHub Actions or GitLab CI/CD) to:

1. Automatically build the Docker image

Use Terraform with the Docker provider to:

1. Pull the built image 
2. Provision a local container (on the engineer's workstation)
3. Run the container so it executes the script automatically on start

⚙️ Requirements

- Use GitLab, GitHub, or any VCS platform to host your code and CI configuration.
- Your Terraform setup must allow running the Docker container locally (e.g., via terraform init and terraform apply).
- The container should send the notification each time it starts.

## 🧠 Notes for Candidates

This challenge is designed for devops engineers — clarity, clean structure, and ability to explain decisions are key.
If you cannot complete every part, focus on the earlier steps and explain how you would continue in your README.

## 📄 README Instructions

Your repository should include a README.md file with the following:

- ✅ Short summary of what your solution does
- ✅ Which tools you chose and why
- ✅ How to run the Terraform setup locally
- ✅ Notes on what was completed and what you'd do next

## ✅ Submission Checklist

1. notification.py or notify.sh script
1. Dockerfile builds the image and runs the script
1. CI/CD pipeline builds and tags the image
1. Terraform files with Docker provider
1. Terraform runs the container locally
1. README with explanations and usage instructions
1. Hosted Git repository (GitHub/GitLab/etc.)