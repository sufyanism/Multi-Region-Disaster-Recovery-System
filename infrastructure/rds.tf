resource "aws_db_instance" "primary_db" {
  provider            = aws.primary
  engine              = "postgres"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  name                = "drdb"
  username            = "admin"
  password            = "password123"
  skip_final_snapshot = true
}

resource "aws_db_instance" "secondary_db" {
  provider            = aws.secondary
  engine              = "postgres"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  name                = "drdb"
  username            = "admin"
  password            = "password123"
  skip_final_snapshot = true
}
