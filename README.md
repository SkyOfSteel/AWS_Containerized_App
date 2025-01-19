# AWS Containerized App
Deploying a Sample Containerized Web Application on AWS
## Overview
The project is to create a containerized web application using Docker and deploy it on AWS using Amazon Elastic Container Registry and Elastic Kubernetes Service. The web application will use a containerized version of a popular open-source web application and will be accessible globally through Elastic Kubernetes Service.
## Architecture Design
Work in progress, to be done in Draw.io.
## List of Required Services
**Core:**

- Amazon EC2
- Amazon Elastic Kubernetes Service (EKS)
- Amazon Elastic Container Registry (ECR)
- Application Load Balancer (ALB)
- Amazon Route 53
- Amazon CloudFront
- Amazon Relational Database Service (RDS)

**Additional:**

- AWS Identity and Access Management (IAM) 
- Amazon CloudWatch 
- AWS Auto Scaling 
- AWS Secrets Manager 
- AWS Key Management Service (KMS)

**Development and CI/CD Tools:**

- Docker
- AWS CodePipeline
- AWS CoreBuild
- AWS CodeDeploy
- Kubernetes YAML Files

**Scalability and High Availability:**

- Horizontal Pod Autoscaler (HPA) 
- AWS Fargate (Optional)

**Security and Networking:**

- AWS WAF (Web Application Firewall) 
- AWS VPC (Virtual Private Cloud) 
- AWS NAT Gateway 

**Optional Advanced Features:**

- AWS App Mesh 
- AWS Elastic File System (EFS) 
- AWS Lambda
