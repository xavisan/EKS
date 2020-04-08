variable "EKS_name" {
  description = "Kubernetes Cluster Name for Amazon AWS"
  default     = "EKS-Demo"
}

variable "EKS_vpcid" {
  description = "Amazon AWS RDS identity the Security ID Group for detect the VPC ID - Default London "
  default     = "vpc-number"
}

variable "EKS_instance_type" {
  description = "Amazon AWS Instance Type"
  default     = "t2.medium"
}

variable "EKS_asg_max_size" {
  description = "Amazon AWS Instance maximum size"
  default     = 5
}

variable "EKS_Tag" {
  description = "Amazon AWS EKS Tag for use to create Cluster"
  default     = "EKS-Demo"
}

variable "EKS_subnets" {
  description = "Amazon AWS EKS subnets to use"
  default     = ["subnet-xxxx", "subnet-xxxx", "subnet-xxxx"]
}

variable "EKS_security_group" {
  description = "Amazon AWS EKS Security Group"
  default     = ["sg-xxxx"]
}


