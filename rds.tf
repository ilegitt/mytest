resource "aws_db_instance" "postgres" {
  allocated_storage      = 20
  max_allocated_storage  = 20
  engine                = "postgres"
  engine_version        = "15.4"
  instance_class        = "db.t3.micro"
  db_name               = "mydatabase"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.postgres15"
  publicly_accessible  = false
  storage_type         = "gp2"
  skip_final_snapshot  = true
}
