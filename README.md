# Red Hat Terraform Keypair Module (AWS)

This Terraform module is for creating a single AWS Keypair.

# Inputs

- `aws_region`: Target AWS Region
- `public_ssh_key_path`: Path to public key used to authorize SSH access to instance

# How to Use

1. [Properly Configure AWS Access Credentials](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)
2. [Install Terraform v0.12+](https://learn.hashicorp.com/terraform/getting-started/install.html)
3. Clone Repository and Apply the terraform module:


By default, this module will read the contents of your local ssh key at `~/.ssh/id_rsa.pub` and upload that public key to your AWS account under the keypair name `redhat_deployer`. If you do not wish to use your default key, set the `TF_VAR_public_ssh_key_path` environment variable to assign the correctly desired public key.

```
git clone git@github.com:rhtconsulting/tf-redhat-keypair-aws.git
cd /path/to/tf-redhat-keypair-aws
export TF_VAR_public_ssh_key_path=/path/to/desired/public/key
terraform apply
```

Alternatively, you can use this repository as a terraform module in a larger terraform plan and project.