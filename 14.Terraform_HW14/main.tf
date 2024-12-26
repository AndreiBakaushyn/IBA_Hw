provider "aws" {
  region = var.region
}

# VPC 1
resource "aws_vpc" "vpc1" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC1"
  }
}

# Subnet 1 in AZ 1
resource "aws_subnet" "vpc1_subnet_az1" {
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "VPC1 Subnet AZ1"
  }
}

# Subnet 2 in AZ 2
resource "aws_subnet" "vpc1_subnet_az2" {
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "VPC1 Subnet AZ2"
  }
}

# Random Password
resource "random_password" "rds_password" {
  length  = 16
  special = true
}

# Parameter Store
resource "aws_ssm_parameter" "db_password" {
  name  = var.db_password_parameter
  type  = "SecureString"
  value = random_password.rds_password.result
}

# Security Group for RDS
resource "aws_security_group" "rds_sg" {
  name_prefix = "rds-sg-"
  description = "Security group for RDS instance"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "RDS Security Group"
  }
}

# DB Subnet Group
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  description = "Subnet group for RDS"
  subnet_ids = [aws_subnet.vpc1_subnet_az1.id, aws_subnet.vpc1_subnet_az2.id]

  tags = {
    Name = "RDS Subnet Group"
  }
}

# RDS instance
resource "aws_db_instance" "rds" {
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  username               = var.db_username
  password               = random_password.rds_password.result
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  publicly_accessible    = false
  skip_final_snapshot    = true

  tags = {
    Name = "RDS Instance"
  }
}

# VPC 2 (Optional, if still needed for the task)
resource "aws_vpc" "vpc2" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC2"
  }
}
