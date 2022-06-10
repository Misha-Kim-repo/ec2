variable "aws-vpc" {
    description = "VPC for Bastion"
    type        = string
}
variable "security_groups_rule" {
    description = "rule for SG"
    type        = list(string)
    default     = []
}

variable "image_id" {
    description = "AMI for EC2"
    type        = string
    default     = "ami-0cbec04a61be382d9"
}

variable "instance_type" {
    description = "type of EC2 instance"
    type        = string
    default     = "t3.medium" 
}

variable "subnet_id" {
    description = "subnet of EC2 instance"
    type        = string 
}

variable "security_groups" {
    descruption = "SG"
    type        = list
}