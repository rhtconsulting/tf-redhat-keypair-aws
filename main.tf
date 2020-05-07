provider "aws" {
    region = var.aws_region
}

resource "aws_key_pair" "deployer_key" {
    key_name = "redhat_deployer"
    public_key = file(var.public_ssh_key_path)
}