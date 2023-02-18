provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAY5P26JJ7HCFDN3VF"
  secret_key = "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"
}

resource "aws_instance" "myec2"{
    ami = "ami-01a4f99c4ac11b03c"
    instance_type = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${aws_instance.myec2.private_ip} >> /var/tmp/ips.txt"
    }
}