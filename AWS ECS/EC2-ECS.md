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
