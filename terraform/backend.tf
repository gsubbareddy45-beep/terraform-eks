terraform {
  backend "s3" {
    bucket         = "somu-eks-terraform-state"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}