# Create a Null Resource and Provisioners





resource "null_resource" "name" {
  depends_on = [module.ec2_public]
  ## Connection Block for Provisioners to connect to EC2 Instance
  connection {
    type = "ssh"
    user = "ec2-user"
    # password    = var.root_password
    private_key = file("${path.cwd}/private-key/terraform-key.pem")
    host        = aws_eip.bastian_eip.public_ip
  }


  ## File Provisioner: Copies the terraform-key.pem file to /tmp/terraform-key.pem
  provisioner "file" {
    source      = "${path.cwd}/private-key/terraform-key.pem"
    destination = "/tmp/myapp.conf"
  }


  ## Remote Exec Provisioner: Using remote-exec provisioner fix the private key permissions on Bastion Host
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/myapp.conf"
    ]
  }

  ## Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)
  provisioner "local-exec" {
    working_dir = "local-exec-output-files/"
    command     = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    on_failure  = continue
  }

  /*
  provisioner "local-exec" {
    when        = destroy
    working_dir = "local-exec-output-files/"
    command     = "echo Destroy time provisioner `date` >> creation-time-provisioner.txt"
    on_failure  = continue
  }
*/

  ## Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)
}