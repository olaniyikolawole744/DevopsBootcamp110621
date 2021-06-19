terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}



resource "aws_instance" "Devops_Project" {
  ami           = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
  key_name      = "Devops_kp"
  user_data     = "${data.template_file.loaded_bootstrap_file.template}"

  tags = {
    Name = "Devops_Project_1"
  }
}


