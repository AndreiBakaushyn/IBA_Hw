# Провайдер AWS
provider "aws" {
  region = "us-east-1"  # Укажите ваш регион
}

# Модуль для создания VPC из GitHub репозитория
module "vpc" {
  source = "./modules/vpc"  # Указание источника модуля (это публичный репозиторий на GitHub)
  name   = "my-vpc"
  cidr   = "10.0.0.0/16"
  azs    = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway = true
}

# Вывод ID созданного VPC
output "vpc_id" {
  value = module.vpc.vpc_id
}
