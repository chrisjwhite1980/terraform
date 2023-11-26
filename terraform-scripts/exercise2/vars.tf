variable "REGION" {
  default = "us-west-1"
}

variable "ZONE1" {
  default = "us-west-1b"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-west-1 = "ami-080d1454ad4fabd12"
    us-west-2 = "ami-0c0d141edc4f470cc"
  }
}