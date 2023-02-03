variable "aws_region" {
  type = string
  description = "AWS Region to use for resources"
  default = "us-east-1"
}

variable "cidr_block" {
    type = string
    description = "CIDR Block to be assigned to VPC"
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    description = "Boolean Value for enabling dns hostnames"
    default = false
}

variable "vpc_subnets_cidr_block" {
    type = list(string)
    description = "CIDR Block to be assigned to subnet1"
    default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "map_public_ip_on_launch" {
    type = bool
    description = "Boolean Value for mapping public ip on lanch"
    default = true
}

variable "route_table_cidr_block" {
    type = string
    description = "CIDR Block to be assigned to RTB"
    default = "0.0.0.0/0"
}

variable "ec2_instance_sizes" {
    type = map (string)
    description = "list of aws ec2 instance sizes"
    default = {
        small = "t2.micro"
        medium = "t2.small"
        large = "t2.large"
    }
}

variable "company" {
    type = string
    description = "Company name to be a common tag and used as a local"
    default = "Globomantics"
}

variable "project" {
    type = string
    description = "Project name to be a common tag and used as a local"
}

variable "billing_code" {
    type = string
    description = "Billing Code to be a common tag and used as a local"
}