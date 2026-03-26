# End-to-End DevOps Implementation on Golang Application

## Project Overview
Complete end-to-end DevOps pipeline for a Golang web application
deployed on Kubernetes using GitOps principles.

## What I Implemented
- Containerized Golang application using multi-stage Docker builds
- Deployed application on Kubernetes cluster for high availability
- Automated CI pipeline using GitHub Actions on every code push
- Configured Argo CD for GitOps-based continuous deployment
- Used Helm charts for templated Kubernetes manifests
- Configured Ingress controller for external traffic routing

## Tools and Technologies Used

| Tool | Purpose |
|---|---|
| Golang | Application language |
| Docker | Containerization |
| Kubernetes | Container orchestration |
| GitHub Actions | CI pipeline automation |
| Argo CD | GitOps CD deployment |
| Helm | Kubernetes package manager |
| Ingress Controller | Traffic routing |
| AWS | Cloud infrastructure |

## Project Architecture
Code Push → GitHub Actions CI → Docker Build → 
Push to Registry → Argo CD detects change → 
Deploy to Kubernetes → Ingress routes traffic

## CI/CD Pipeline Stages
1. Code pushed to GitHub repository
2. GitHub Actions triggers automated build
3. Docker image built and pushed to registry
4. Argo CD detects new image version
5. Kubernetes deployment updated automatically
6. Application accessible via Ingress controller

## How to Run Locally
git clone https://github.com/shu-kate/go-web-app
cd go-web-app
go run main.go
App runs on http://localhost:8080
