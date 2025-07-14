#----------------Create ssh key using ssh-keygen command---------------------------


resource "aws_key_pair" "deployer" {
  key_name   = "devops_key_pair"
  public_key = file("${path.module}/devops_key_pair.pub")
}

# ssh-keygen # name = oregon-keypair
# chmod 400 oregon-keypair
# cat oregon-keypair >> GitHub Secrets EC2_PRIVATE_SSH_KEY
# cat oregon-keypair.pub >> GitHub Secrets EC2_PUBLIC_SSH_KEY

