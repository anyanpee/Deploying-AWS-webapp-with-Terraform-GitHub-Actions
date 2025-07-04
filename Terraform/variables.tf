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
  default = "ssh_key-aws" # Replace with your EC2 key pair
}

variable "public_key" {
  type      = string
  sensitive = true
  default   = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC59SftnyAwI5+GzAT1cHzXTAxmGB0hxQ3WsjoCWER5jDoIxCicpJPpQLLY3cAtrop8xFlbU4BN6TbxU7uxb7QKYn7W3dHeAd4TW6u9+UAolCw5wS38RSPLBR9SChLmYlZqzHPI8ec4S2a2HPdr+k6QPxnI7TTyn4UWzI+SEgGdvmISOvYj653KNKLLIub1yWOiwkwtXHyMotpMGeENtlVtG/YRIh8dOeXQuV4L1rBapL+gcpdovXrSirdnxACdwO37i6hydV/2mVM+96xkKVeLWAaZWtyGZLUUAEeXWiUzsCqvZtcQobVydoC9KRt0iiViNssmK7bikNe8ET89UStmFhpESRm7v8XdZeQ5VaY0t9J47DweaRdYLpbKFfrDj4W9YIF+IvD0rcwvd2UI3n3nUtjmQTZCefQ+UUXQMwbSvt/C0rS4ufjpsivOKXQrDTsJdcYboaNLQtsjYkQWYw17LUJKqERs1OW4Ok1fIt8HJg/Duuoyrda8I0xx0+RlaXiSFhfZYAlZWeOk5FIxQw3jvaTVPcLTSlUG4r3VnRCsoSp2wlM2ZABUy+NpnLZMtdh9HuqR7ER3G7EjSkBlb9hwtleT+D1S9ShKt3tIm1cwHds9fptzbH+ULo5Poqt/m5BdJanFB19I7C8/+rRy9kc41zLW2tSEAGsfgqPMr7tjSQ== slimp@Anyanpee" # Replace with your actual public key
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

