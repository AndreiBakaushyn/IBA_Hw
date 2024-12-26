variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "db_username" {
  description = "Username for RDS"
  default     = "admin"
}

variable "db_password_parameter" {
  description = "Parameter Store name for RDS password"
  default     = "/rds/password"
}
