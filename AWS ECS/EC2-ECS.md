## Create an EC2 Cluster Type with EC2 Launch Type

- Go to IAM in AWS Management Console
- Choose a role named `AmazonEC2ContainerServiceForEC2Role`
- Choose Next
- Add a title to the role `EC2InstanceRole`

## Creating a cluster

- Navigate to ECS Dashboard
- Go to Cluster, choose `Create Cluster`
- Give it a name, `ECS-Cluster`
- In the infrastructure section, choose `External Instances using ECS Anywhere`

## Create an EC-2 Instance with EC2-Optimized AMI

- Create an Instance Named `EC-Instances`
- Choose this specific AMI Image `ami-040d909ea4356f8f3`
- Select `t2.micro`
- Create a new Security Group which allows `SSH`
- Change instance progile, select `ECSInstanceRole`
- For the user data, insert the following code: 

```
    #!/bin/bash
    echo ECS_CLUSTER=ECS-Cluster >> /etc/ecs/ecs.config
```

## Create a new Task Definintion

- Go to Task Definition in ECS Dashboard
- Name the task definition as, `NGINX-Definition`
- For the container details:
    - Name: `nginx`
    - Image URI: `nginx:latest`
- Change the environment to EC2 Instances and Deselect AWS Fargate
- For vCPU, change it to .25vCPU
- For Memory to .5 GB
- Change Network Mode to `awsvpc`
