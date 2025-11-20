variable "region" { default = "us-east-1" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnets" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "ami_id" { default = "ami-0c94855ba95c71c99" }
variable "instance_type" { default = "t3.micro" }
