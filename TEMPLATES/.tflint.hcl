// https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md
config {
  call_module_type = "local"
  force = false
}

plugin "aws" {
  enabled = true
  version = "0.32.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  deep_check = false
}

rule "aws_instance_invalid_type" {
  enabled = false
}

rule "aws_instance_previous_type" {
  enabled = false
}

rule "terraform_required_providers" {
  enabled = false
}