variable "aws_region" {
  description = "AWS region"
  default     = "eu-north-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "key_name" {
  description = "AWS Key Pair Name"
}

variable "docker_hub_username" {
  description = "Docker Hub Username"
  default     = ""
}

variable "docker_hub_password" {
  description = "Docker Hub Password"
  default     = ""
}

variable "docker_image" {
  description = "Docker Hub Go App Image"
  default     = "bakare007/master:1.9"
}

variable "db_username" {
  description = "Postgres username"
  default     = ""
}

variable "db_password" {
  description = "Postgres password"
  default     = ""
}

variable "db_name" {
  description = "Database name"
  default     = "mydatabase"
}
