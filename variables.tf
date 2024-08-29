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
