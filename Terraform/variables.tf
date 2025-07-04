#---------------- Global Variables ---------------------

variable "region" {
  type    = string
  default = "us-west-2"
}

#---------------- VPC and Subnets ----------------------

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_app_subnet_1_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "private_app_subnet_2_cidr" {
  type    = string
  default = "10.0.4.0/24"
}

variable "private_db_subnet_1_cidr" {
  type    = string
  default = "10.0.5.0/24"
}

variable "private_db_subnet_2_cidr" {
  type    = string
  default = "10.0.6.0/24"
}

#---------------- EC2 Variables ---------------------

variable "ami" {
  type    = string
  default = "ami-05ee755be0cd7555c" # Amazon Linux 2 in us-west-2
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "ssh_key_aws" # Replace with your EC2 key pair
}

variable "public_key" {
  type      = string
  sensitive = true
  default   = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDTZHcbmECzpueBcSj95skeSqEK57wwp+gRwEzaqK9hkvfAlUIVy5VJgWqVLKwzb9/UJIB2JAT+88229txelsYRDV5+aNgjtWSpsPUvpZEdJcbL7P4LQagwezkGqZn8yzfz9UmITpqGJtOfaIVGQu5HvvnGxYXIT41qlIVyzuCuKXwDO44ZySx9SYTXXuZvdI3wKK2PQ9wccDNUe8IHJVu72e/mUMB3pqC+JFQyZexOYiXrsqWBnueFN5BHPZdORSVpTgPQuH+yEQGGzsr3/2+fV56z37ufhdDn+JwnT7Pp8a53onQ25FHVutI4If0tpw4QYK5M/7mkuPHkMbPS88XBgdy1Gi5LcPl0VS2xwbc6EccbQRo10ip+fAIcfXqSnqKOCUbd6Af/MendNJe+Z2zmrcAiKogYSe8C+CHwuxR4Pam0SGm8z/uzGkTlGfdbtzA5YIx3Z13XumgPXJrsq9Yt8ZVE3b5R40UHEsMpV+S+10u1P8AOZSg3XQEP42FeQRrq2dcB6ejeiQQiCVm92gvS6zO5+vCg5xo+bKXO7yg/uHwJAB36yNuy7u4fYV2IqljsH7Zr4a6K+qumwLL4RijTrOH7/NMIItBA0B8sOkRcyhPiRdOtg73Kpp6deqGo5hQ7FZhvUU5LLDIQYAQTKdH+N8F5qCohNPKAhpyy2Q2qOQ== slimp@Anyanpee" 
}

#---------------- Database Variables (optional) ---------------------

# Uncomment if you're using RDS later

# variable "db_name" {
#   type    = string
#   default = "myappdb"
# }

# variable "engine" {
#   type    = string
#   default = "mysql"
# }

# variable "engine_version" {
#   type    = string
#   default = "8.0"
# }

# variable "instance_class" {
#   type    = string
#   default = "db.t3.micro"
# }

# variable "username" {
#   type      = string
#   default   = "admin"
#   sensitive = true
# }

# variable "password" {
#   type      = string
#   default   = "yourStrongDBpassword123"
#   sensitive = true
# }

