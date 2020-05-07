variable "aws_region" {
    type = string
    description = "AWS Target Region. Example: us-gov-west-1, us-west-2"
    default = "us-west-2"
}

variable "public_ssh_key_path" {
    type = string
    description = "Path to SSH public key"
    default = "~/.ssh/id_rsa.pub"
}