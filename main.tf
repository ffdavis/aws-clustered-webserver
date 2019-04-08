module "frontend" {
  source = "./modules"

  launch_conf_name             = "TF-LC-Prod"
  auto_scaling_group_name      = "TF-ASG-Prod"
  instance_tag_name            = "Prod-ASG"
  load_balancer_name           = "TF-ELB-Prod"
  instance-security_group_name = "TF-SecG-instance-Prod"
  elb-security_group_name      = "TF-SecG-elb-Prod"
}
