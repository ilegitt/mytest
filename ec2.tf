resource "aws_instance" "app_server" {
  ami             = "ami-03f71e078efdce2c9"
  instance_type   = var.instance_type
  security_groups = [aws_security_group.app_sg.name]

  tags = {
    Name = "GoAppServer"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              service docker start
              usermod -aG docker ec2-user
              docker pull ${var.docker_image}
              docker run -d -p 8080:8080 --env DB_HOST=${aws_db_instance.postgres.address} \
                         --env DB_USER=${var.db_username} --env DB_PASSWORD=${var.db_password} ${var.docker_image}
              EOF
}
