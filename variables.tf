variable "aws_region" {
       description = "The AWS region to create things in." 
       default     = "ap-south-1" 
}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "jenkins-master" 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "jenkins-sgroup-dec-2021" 
}

variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "myFirstInstance" 
} 
variable "ami_id" { 
    description = "AMI for linux Ec2 instance" 
    default     = "ami-02b49a24cfb95941c" 
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}
variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}
variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
    default     = "my-s3bucket-"
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}
#variable "instance_types" {
 # description = "Map of application types to instance types"
  # type        = map(string)
  # default = {
   # sonarqube = "t2.medium"
   # webserver = "t2.micro"
    # database  = "t2.large"
 # }
#}
variable "sonarqube" {
  description = "A boolean to determine if SonarQube is being deployed. Set to true if yes."
  type        = bool
  default     = false  # Set this to true if SonarQube should be deployed by default
}



