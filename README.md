# Terraform AWS VPC and Networking implementation

This Terraform project provisions a complete AWS networking infrastructure including VPC, subnets, route tables,
NAT gateways, security groups, and EC2 instances (including a bastion host).

## Infrastructure Components

- **VPC**: Main virtual private cloud.
- **Subnets**: Public and private subnets across multiple availability zones.
- **Route Tables**: Public and private routing configurations.
- **Internet Gateway**: To enable internet access for public subnets.
- **NAT Gateway**: For private subnet outbound internet access.
- **Security Groups**: Rules to allow SSH and port 3000 access.
- **Bastion Host**: A secure instance for SSH access to private instances.
- **EC2 Instances**: Application instances running inside private subnets.

## Files Description

- `vpc.tf`: Defines the VPC resource.
- `publicSub1.tf` and `publicSub2.tf`: Public subnet definitions.
- `privateSub1.tf` and `privateSub2.tf`: Private subnet definitions.
- `pub-route-table.tf` and `priv-route-table.tf`: Route table configurations.
- `internet-gateway.tf`: Internet Gateway setup.
- `nat.tf`: NAT Gateway resources.
- `allow-ssh-sg.tf` and `allow-3000-sg.tf`: Security group rules.
- `bastion.tf`: Bastion host setup.
- `app-ec2.tf`: EC2 instances for the application.
- `backend.tf`: Terraform backend configuration.
- `provider.tf`: AWS provider configuration.
- `key.tf`: SSH key pair setup.

## Prerequisites

- AWS CLI configured with appropriate credentials.
- Terraform installed (version X.X.X or later).
- Access to AWS account with permissions to create VPC, EC2, and networking resources.

## How to Use

1. Initialize Terraform:
   ```bash
   terraform init

2. Review the execution plan:
   ```bash
   terraform plan

3. Apply the configuration:
   ```bash
   terraform apply

4. Destroy the infrastructure when no longer needed:
   ```bash
   terraform destroy

# Notes

Make sure to customize any variables or resource names as needed.
Security groups allow SSH from specific IPs (modify accordingly).
Bastion host is placed in a public subnet for secure SSH access.

