resource "aws_instance" "bastion_instance_1" {
  ami                         = var.ami
  instance_type               = var.ec2_instance_type
  availability_zone           = "${var.region}a"
  vpc_security_group_ids      = [aws_security_group.BastionSG.id] ##########
  key_name                    = "oregon-keypair"
  subnet_id                   = module.network.public_subnet_1_id
  associate_public_ip_address = true
  tags = {
    Name = "Bastion"
  }


  # user_data = <<-EOF
  #   #!/bin/bash
  #   # Use this for your user data (script from top to bottom)
  #   # install httpd (Linux 2 version)
  #   yum update -y
  #   yum install -y httpd
  #   systemctl start httpd
  #   systemctl enable httpd
  #   echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
  #   EOF
}








resource "aws_instance" "application_instance_1" {
  depends_on = [
    aws_lb.alb, aws_lb_target_group.tagret_group
  ]
  ami                    = var.ami
  instance_type          = var.ec2_instance_type
  availability_zone      = "${var.region}a"
  vpc_security_group_ids = [aws_security_group.InstanceSG.id] #########
  key_name               = "oregon-keypair"
  subnet_id              = module.network.private_app_subnet_1_id
  tags = {
    Name = "application_instance_1"
  }

  user_data = <<-EOF
  #!/bin/bash
  yum update -y
  yum install -y docker
  service docker start
  $(aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 257394496890.dkr.ecr.us-west-2.amazonaws.com)
  docker pull 257394496890.dkr.ecr.us-west-2.amazonaws.com/my-app:latest
  docker run -d -p 80:80 257394496890.dkr.ecr.us-west-2.amazonaws.com/my-app:latest
  EOF
}

resource "aws_instance" "application_instance_2" {
  depends_on = [
    aws_lb.alb, aws_lb_target_group.tagret_group
  ]
  ami                    = var.ami
  instance_type          = var.ec2_instance_type
  availability_zone      = "${var.region}b"
  vpc_security_group_ids = [aws_security_group.InstanceSG.id] ###########
  key_name               = "oregon-keypair"
  subnet_id              = module.network.private_app_subnet_2_id
  tags = {
    Name = "application_instance_2"
  }



  user_data = <<-EOF
    #!/bin/bash
    # Use this for your user data (script from top to bottom)
    # install httpd (Linux 2 version)
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello World from $(hostname -f)<br> This is The 2nd EC2 Instance</h1>" > /var/www/html/index.html
    EOF
}
