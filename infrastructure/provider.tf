cat > multi-region-dr/infrastructure/provider.tf <<EOL
provider "aws" {
  alias  = "primary"
  region = "us-east-1"
}

provider "aws" {
  alias  = "secondary"
  region = "us-west-2"
}
EOL
