#----------------Create ssh key using ssh-keygen command---------------------------


data "aws_key_pair" "deployer" {
  key_name = "oregon-keypair"
}

# ssh-keygen # name = oregon-keypair
# chmod 400 oregon-keypair
# cat oregon-keypair >> GitHub Secrets EC2_PRIVATE_SSH_KEY
# cat oregon-keypair.pub >> GitHub Secrets EC2_PUBLIC_SSH_KEY

