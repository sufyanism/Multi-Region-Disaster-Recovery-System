cat > multi-region-dr/infrastructure/vpc.tf <<EOL
resource "aws_vpc" "primary_vpc" {
  provider   = aws.primary
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "secondary_vpc" {
  provider   = aws.secondary
  cidr_block = "10.1.0.0/16"
}
EOL
