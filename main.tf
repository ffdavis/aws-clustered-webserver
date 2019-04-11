provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region                  = "${var.region}"      # us-east-1
  profile                 = "default"
}

locals {
  env = "PROD"
}

module "frontendProd" {
  source = "./modules/frontend-app"

  # launch_conf_name             = "TF-LC-Prod"
  launch_conf_name               = "TF-LC-${local.env}"
  auto_scaling_group_name        = "TF-ASG-${local.env}"
  instance_tag_name              = "TF-Inst-${local.env}-ASG"
  e_load_balancer_name           = "TF-ELB-${local.env}"
  instance_security_group_name   = "TF-SecG-instance-${local.env}"
  elb_security_group_name        = "TF-SecG-elb-${local.env}"
  asgroup_min_size               = 2
  asgroup_max_size               = 10
  autoscaling_policy_name        = "TF-scaleout-Prod"
  autoscaling_adjustment_type    = "ChangeInCapacity"
  autoscaling_policy_type        = "SimpleScaling"
  autoscaling_scaling_adjustment = 1
  autoscaling_cooldown           = 200
}
