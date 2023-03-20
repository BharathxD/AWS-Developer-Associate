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

```
aws ecs register-task-definition --cli-input-json file://taskdef.json
```

- Create an Application Load Balancer
- Should be internet facing
- Listen on HTTP port 80
- Add a second listener on HTTP 8080
- Choose 2 public subnets in different AZs
- Create a new TG - target-group-1, protocol HTTP 80, target type = IP address
- Creat a second TG - target-group-2, protocol HTTP 8080, target type = IP address
- For the second listener, forward to target-group-2

- Update security group to allow inbound on 80 and 8080

## Create Fargate Cluster and Service

Create a Fargate cluster named "ecs-cluster"
From a CLI with ECS permissions, change to the directory with the create-service.json file and run the following commands:

```
aws ecs create-service --service-name my-service --cli-input-json file://create-service.json
```

```
aws ecs describe-services --cluster ecs-cluster --services my-service
```