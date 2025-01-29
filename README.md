# AWS Containerized App
Deploying a Sample Containerized Web Application on AWS
## Overview
The project is to create a containerized web application using Docker and deploy it on AWS using Amazon Elastic Container Registry and Elastic Kubernetes Service. The web application will use a containerized version of a popular open-source web application and will be accessible globally through Elastic Kubernetes Service.
## Architecture Design
![Containerized Web Application on AWS - EFS Version drawio](https://github.com/user-attachments/assets/5ea5b602-b945-4f10-a1a2-e65429c05cea)
(Still work in progress, continuously improved.)
## Breakdown
<details>
High-level tasks:
1. Set up an AWS account and create a new Elastic Container Registry.
2. Create a Dockerfile to build a container image of the chosen web application and push it to the Elastic Container Registry.
3. Create an Elastic Kubernetes Service cluster and configure it to use the Elastic Container Registry to pull container images.
4. Deploy the containerized web application to the Elastic Kubernetes Service cluster.
5. Use AWS Load Balancer or Amazon CloudFront to provide global accessibility to the web application.
6. Implement scalability and high availability features for the web application using Elastic Kubernetes Service.

Optional tasks:
1. Use Amazon CloudWatch to monitor the performance and health of the containerized web application.
2. Use AWS ECS to automate the deployment process and manage the container lifecycle.
3. Use AWS Step Functions to manage and secure communication between microservices running in the containerized web application.

Skills needed:
1. Understanding of containerization and Docker.
2. Knowledge of Kubernetes and container orchestration.
3. Familiarity with Elastic Container Registry and Elastic Kubernetes Service.
4. Understanding of AWS infrastructure services such as AWS Load Balancer and Amazon CloudFront.
</details>

## List of Required Services
<details>
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
</details>

## Docker on EC2
[Helpful video tutorial](https://www.youtube.com/watch?v=6Hj-stf51Bc&list=PLqoUmUbJ_zDHPwK-ZWATXiYrUXwWkLY65&index=1)

The security group associated with an EC2 should allow SSH (port 22) connections to work on the server and HTTP (port 80) connections to be able to access to the deployed web-server container via a public IP.

To build a docker image:
`sudo docker build -t test-image .`

To run a docker container:
`sudo docker run -d -p 80:80 --name test-container test-image`

To view the status of running containers:
`sudo docker ps -a`

To remove a running container:
`sudo docker rm test-container`

To remove an image from docker's registry:
`sudo docker image rm test-image`
