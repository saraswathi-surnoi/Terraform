variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}
variable "server_names" {
  type    = list(string)
  default = ["webserver-1", "webserver-2"]
}
variable "ami" {
  default = "ami-025fe52e1f2dc5044"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  default = "demo-pp"
}
variable "ami" {
  default = "ami-025fe52e1f2dc5044"
}
variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
    default     = "my-s3bucket-"
}
variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }

