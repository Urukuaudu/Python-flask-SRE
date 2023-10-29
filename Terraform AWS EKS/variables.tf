variable "private_cidr" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1", "us-east-2"]
}

variable "public_cidr" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}
