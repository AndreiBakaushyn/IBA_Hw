provider "aws" {
  region = "us-east-1"  # Укажите ваш регион
}

# Создание VPC
resource "aws_vpc" "custom_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "custom_vpc"
  }
}

# Создание подсети
resource "aws_subnet" "custom_subnet" {
  vpc_id            = aws_vpc.custom_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"  # Укажите вашу зону доступности
  tags = {
    Name = "custom_subnet"
  }
}

# Создание Security Group
resource "aws_security_group" "custom_sg" {
  name        = "custom_sg"
  description = "Custom security group"
  vpc_id      = aws_vpc.custom_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
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
    Name = "custom_sg"
  }
}

# Создание EC2 instance
resource "aws_instance" "custom_instance" {
  ami                    = "ami-0e2c8caa4b6378d8c"  # Ubuntu 24.04 LTS
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.custom_subnet.id
  vpc_security_group_ids = [aws_security_group.custom_sg.id]
  tags = {
    Name = "custom_instance"
  }
}

# Вывод ID созданного сервера
output "instance_id" {
  value = aws_instance.custom_instance.id
}
