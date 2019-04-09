module "frontend" {
  source = "./modules"

  launch_conf_name             = "TF-LC-Prod"
  auto_scaling_group_name      = "TF-ASG-Prod"
  instance_tag_name            = "TF-Prod-ASG"
  e_load_balancer_name         = "TF-ELB-Prod"
  instance_security_group_name = "TF-SecG-instance-Prod"
  elb_security_group_name      = "TF-SecG-elb-Prod"
}
