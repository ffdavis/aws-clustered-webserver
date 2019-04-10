# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}

variable "launch_conf_name" {
  description = "Launch Configuration Name"
}

variable "auto_scaling_group_name" {
  description = "Auto Scaling Group Name"
}

variable "asgroup_min_size" {
  description = "Auto Scaling Group Min Size"
}

variable "asgroup_max_size" {
  description = "Auto Scaling Group Max Size"
}

variable "instance_tag_name" {
  description = "Instance Tag Name"
}

variable "e_load_balancer_name" {
  description = "Elastic Load Balancer Name"
}

variable "instance_security_group_name" {
  description = "Instance Security Group Name"
}

variable "elb_security_group_name" {
  description = "ELB Security Group Name"
}

variable "autoscaling_policy_name" {
  description = "autoscaling_policy_name"
}

variable "autoscaling_adjustment_type" {
  description = "autoscaling_adjustment_type"
}

variable "autoscaling_policy_type" {
  description = "autoscaling_policy_type"
}

variable "autoscaling_scaling_adjustment" {
  description = "autoscaling_scaling_adjustment"
}

variable "autoscaling_cooldown" {
  description = "autoscaling_cooldown"
}
