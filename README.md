# Overview
TODO:Welcome to the Blue Harvest Cloud-DevOps Assessment! In this assessment, we aim to architect and deploy an application consisting of a .NET application to the cloud. Our goal is to establish robust CI/CD pipelines and infrastructure as code (IaC) for seamless deployment and management of the application.

# User Stories
Objective: Implement a CI/CD pipeline for the application.
Features:
1. Build and test the application codebase.
2. Build and push a Docker container.
3. Deploy the application across different environments on the target infrastructure.

# Infrastructure Deployment Pipeline
Objective: Deploy the required infrastructure for the application using IaC.
Features:
1. Public cloud provider:- Azure Cloud
2. Infrastructure as code tool:- Terraform
3. Source code management:- Azure Repos
4. Pipeline Tool:- ADO Pipelines


# Choice of Cloud Provider
For this assessment, we will utilize Azure as our cloud platform. 

# CI/CD Pipeline Architecture
Our CI/CD pipeline will consist of the following stages:

1. Source: Pull the application source code from the repository.
2. Build: Compile the Java backend or .NET application and run tests.
3. Dockerization: Build a Docker container for the application.
4. Push: Push the Docker image to a container registry.
5. Deployment: Deploy the application to different environments





# Infrastructure Deployment Pipeline
Our IaC pipeline utilizes Terraform to provision and manage cloud resources efficiently. Below is an overview of the  the Terraform modules used for each component:

Terraform Modules:
web_app: Manages the deployment of the web application using Azure App Service.
app_service_plan: Defines the configuration for the Azure App Service Plan, specifying resource allocation and scaling options.
resource_group: Handles the creation of the resource group, providing a logical grouping for all resources related to the application.

# Continuous Deployment Pipeline (CD)

Azure DevOps pipeline configuration (pipeline.yml) for continuous deployment (CD) using Terraform. The pipeline automates the deployment process of infrastructure using Terraform scripts

Job 1: Terraform Plan
DisplayName: Terraform Plan
Steps:
Terraform Version: Displays the Terraform version.
Init: Initializes Terraform, setting up the environment.
Validate: Validates the Terraform configuration.
Plan: Generates an execution plan for Terraform changes.
Job 2: Terraform Apply
DisplayName: Terraform Apply
Depends On: Terraform Plan
Steps:
Init: Initializes Terraform again to ensure the environment is set up.
Apply: Applies the Terraform changes to provision or update the infrastructure.


Environment Variables

The pipeline requires the following environment variables to authenticate with the Azure subscription and access resources:

1. ARM_SUBSCRIPTION_ID: Azure subscription ID.
2. ARM_TENANT_ID: Azure Active Directory tenant ID.
3. ARM_CLIENT_ID: Azure service principal client ID.
4. ARM_CLIENT_SECRET: Azure service principal client secret.
Ensure that these environment variables are securely stored and managed in your Azure DevOps project settings.

Getting Started
To use this pipeline:

Clone this repository to your Azure DevOps project.
Replace the placeholder values in the pipeline.yml file with your actual Azure credentials.
Create a new pipeline in Azure DevOps and select the pipeline.yml file from your repository.
Run the pipeline to deploy your infrastructure using Terraform.