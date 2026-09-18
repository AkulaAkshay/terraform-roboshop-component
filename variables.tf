variable "project_name" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "component" {
  type = string
  default = "catalogue"
}

variable "rule_priority" {
  #type = map 
}

variable "domain_name" {
  type = string
  default = akshaysunny.space
}