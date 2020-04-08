#-----------------------------------------------------------
#
# EKS for Amazon AWS
# Code xavisan
#
#-----------------------------------------------------------

module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "~> 6.0.2"
  cluster_name = "${var.EKS_name}"
  cluster_version = "1.14"
  subnets = ["${var.EKS_subnets}"]
  
  # Default VPC Selected
  vpc_id       = "vpc-specify_id_number"

  worker_groups = [
    {
      name ="worker-group-00"
      instance_type = "${var.EKS_instance_type}"
      autoscaling_enabled = true
      asg_max_size  = "${var.EKS_asg_max_size}"
      asg_derired_capacity = 2
      asg_max_size = 50
    },
    {
      name ="worker-group-01"
      instance_type = "m2.medium"
      autoscaling_enabled = true
      asg_max_size  = "${var.EKS_asg_max_size}"
      asg_derired_capacity = 2
      asg_max_size = 50
    },
  {
      name ="worker-group-02"
      instance_type = "m2.medium"
      autoscaling_enabled = true
      asg_max_size  = "${var.EKS_asg_max_size}"
      asg_derired_capacity = 2
      asg_max_size = 50
    }
  ]

}
