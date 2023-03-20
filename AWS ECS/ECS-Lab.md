# Create Image and Push to ECR Repository

Launch EC2 instance - Amazon Linux 2 AMI, t2.micro
Connect to instance using EC2 Instance Connect

## Connect to the Instance using SSH:

### Run the following commands:

```sudo su```
```yum update```
```yum install docker```
```systemctl enable docker.service```
```systemctl start docker.service```
```docker pull nginx```
```docker images```