# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "region" {
  description = "the aws region where we want create the resources"
  default     = "us-east-1"
}

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
