provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region                  = "${var.region}"      # us-east-1
  profile                 = "default"
}

module "frontendProd" {
  source = "./modules/frontend-app"

  launch_conf_name             = "TF-LC-Prod"
  auto_scaling_group_name      = "TF-ASG-Prod"
  instance_tag_name            = "TF-Prod-ASG"
  e_load_balancer_name         = "TF-ELB-Prod"
  instance_security_group_name = "TF-SecG-instance-Prod"
  elb_security_group_name      = "TF-SecG-elb-Prod"
  asgroup_min_size             = 2
  asgroup_max_size             = 10

  autoscaling_policy_name        = "TF-scaleout-frontendapp-Prod"
  autoscaling_adjustment_type    = "ChangeInCapacity"
  autoscaling_policy_type        = "SimpleScaling"
  autoscaling_scaling_adjustment = 1
  autoscaling_cooldown           = 200
}
