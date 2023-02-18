provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAY5P26JJ7HCFDN3VF"
  secret_key = "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"
}

resource "aws_instance" "dev"{
    ami = "ami-01a4f99c4ac11b03c"
    instance_type = lookup(var.instance_type,terraform.workspace)
    #key_name = terraform.pem

}

variable instance_type {
  type = map

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod     = "t2.large"
    qa      = "t2.small"
    test = "t2.xlarge"
  }
}


