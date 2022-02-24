# devops-tasks
## Part 1 - Writing

### Proudest achievements
1. Terraform: Direct AWS API Gateway connection to a S3 bucket in order to place a xls file:
All other actions had been done already using lamdbas in between, so I had to refactor the existing terraform code.
2. Refactoring of all already existing UnitTests in a grown project for having a uniform naming convention, structure and test scenarios
3. Reverse engineering in a Liferay project to use existing internal services for content parsing/import


### Personal meaning of DevOps
A role that takes care about...
* ...every part of the infrastructure is *"documented"* via code (IaC) so that there are no manual and undocumented steps left
  * with this everything can easily be reconstructed, moved or duplicated
* ...every build and deployment of software is automated through CI / CD Pipelines
  * the pipelines itself are also part of the IaC within a repository


### Prefer Emacs or Vim?
Nano ;-)



## Part 2 - Coding

### Prerequisites
* Install Docker daemon (e.g. via Docker Desktop)
* Install Terraform
* Navigate to the infrastructure dir and run
```bash
terraform init
```


### Instructions

#### 1. Start / Create everything:

Navigate to infrastructure directory and run:
```bash
# With default port
terraform apply

# With custom port
terraform apply -var="container_port=9999" 
```

The application is then available via 
```
localhost:8081
```
or your specified port.


#### Recreate / Remove everything
To recreate or cleanup the container (-image) run 
```bash
terraform destroy
```


### How does it work?
#### run.sh
The script starts the jar file with either the argument or it defaults to the ***EXT_PORT*** environment variable.

#### Docker
The Dockerfile is based on a standard jdk8 image and copies the jar as well as the run.sh into the container image.
The run.sh is the entry point of the container.

#### Terraform
Terraform creates the Docker-Image locally and runs the container.
Based on the variables.tf the **port** and image-**version** can be specified.
If not set the port defaults to ***8081***




