# Overview
TODO:Welcome to the Blue Harvest Cloud-DevOps Assessment! In this assessment, we aim to architect and deploy an application consisting of a .NET application to the cloud. Our goal is to establish robust CI/CD pipelines and infrastructure as code (IaC) for seamless deployment and management of the application.

# User Stories
Objective: Implement a CI/CD pipeline for the application.
Features:
1. Build and test the application codebase.
2. Build and push a Docker container.
3. Deploy the application across different environments on the target infrastructure.

# Infrastructure Deployment Pipeline
Objective: Deploy the required infrastructure for the application using IaC in the Cloud.
Features:
1. Public cloud provider:- Azure Cloud
2. Infrastructure as code tool:- Terraform
3. Source code management:- Azure Repos
4. Pipeline Tool:- ADO Pipelines


 

# CI/CD Pipeline Architecture
Our CI/CD pipeline will consist of the following stages:

1. Source: Pull the application source code from the repository.
2. Build: Compile the Java backend or .NET application and run tests.
3. Dockerization: Build a Docker container for the application.
4. Push: Push the Docker image to a container registry.
5. Deployment: Deploy the application to different environments

# Continuous Integration Pipeline (CI)
This repository contains the Azure DevOps pipeline configuration (ci.yml) for continuous integration (CI) of a .NET application. The pipeline automates the build, test, and publish process of the application, as well as Dockerizing the application and pushing it to a Docker registry.

Pipeline Configuration
The pipeline is triggered on changes to the main branch. It consists of the following job:

Job: CI
DisplayName: CI
Steps:
  1. Install .NET SDK: Installs the specified version of the .NET SDK.
  2. Restore NuGet Packages: Restores NuGet packages required for the project.
  3. Build the Application: Builds the .NET application with the Release configuration.
  4. Run Unit Tests: Executes unit tests and collects code coverage using XPlat Code Coverage.
  5. Publish the Application: Publishes the built application with the Release configuration.
  6. Docker Login: Logs in to the Docker registry using provided credentials.
  7. List: Lists the contents of the published directory.
  8. Print Working Directory: Prints the current working directory.
  9. Print Staging Directory: Prints the staging directory.
  10. Docker Build and Push: Builds Docker images from the published application and pushes them to the specified Docker registry repository with the '1.0' tag.


Note: Make a service connection from ADO Pipelines to Docker-Hub & Azre Resource Manager(cloud)


Environment Variables
The pipeline requires the following environment variables to authenticate with the Docker registry:

1. username: Docker registry username.
2. password: Docker registry password.
Ensure that these environment variables are securely stored and managed in your Azure DevOps project settings.

Getting Started
To use this pipeline:

Clone this repository to your Azure DevOps project.
Replace the placeholder values in the ci.yml file with your actual Docker registry credentials and repository name.
Create a new pipeline in Azure DevOps and select the ci.yml file from your repository.
Run the pipeline to build, test, publish, Dockerize, and push your .NET application.

Note: Make a service connection from ADO Pipelines to Docker-Hub & Azre Resource Manager(cloud)

# Infrastructure Deployment Pipeline
Our IaC pipeline utilizes Terraform to provision and manage cloud resources efficiently. Below is an overview of the  the Terraform modules used for each component:

Terraform Modules:
web_app: Manages the deployment of the web application using Azure App Service.
app_service_plan: Defines the configuration for the Azure App Service Plan, specifying resource allocation and scaling options.
resource_group: Handles the creation of the resource group, providing a logical grouping for all resources related to the application.

# Continuous Deployment Pipeline (CD)

Azure DevOps pipeline configuration (cd.yml) for continuous deployment (CD) using Terraform. The pipeline automates the deployment process of infrastructure using Terraform scripts
Make a service connection from ADO Pipelines to Docker-Hub & Azre Resource Manager(cloud)


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
