variable "ami_id" {
  type = string
  description = "This is ami id"
  default = "ami-0220d79f3f480ecf5"
}

variable "zone_id" {
    default = "Z01619771MJT7AVCGE583"
}

variable "domain" {
    default = "lokiaws.online"
}
variable tags{
    type = map
    default = {
        Project = "Expense"
        terraform = "true"
    }
}

variable "environment" {
    
}

variable "instances" {
    type = map
    
}