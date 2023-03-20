# Create Image and Push to ECR Repository

Launch EC2 instance - Amazon Linux 2 AMI, t2.micro
Connect to instance using EC2 Instance Connect

## Connect to the Instance using SSH:

### Run the following commands:

```
    sudo su
```
```
    yum update
```
```
    yum install docker
```
```
    systemctl enable docker.service
```
```
    systemctl start docker.service
```
```
    docker pull nginx
```
```
    docker images
```

Create an IAM role and use policy "ecr-allow-all.json" and name it ECRPolicy
Attach role to EC2 instance and then run the following commands (replace account number):

```
    aws ecr create-repository --repository-name nginx --region us-east-1
```
```
    docker tag nginx:latest 059535961689.dkr.ecr.us-east-1.amazonaws.com/nginx:latest
```
```
    aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 059535961689.dkr.ecr.us-east-1.amazonaws.com/nginx
```
```
    docker push 059535961689.dkr.ecr.us-east-1.amazonaws.com/nginx:latest
```

## Create Task Definition and ALB

From a CLI with ECS permissions, change to the directory with the taskdef.json file and run the following commands:

aws ecs register-task-definition --cli-input-json file://taskdef.json