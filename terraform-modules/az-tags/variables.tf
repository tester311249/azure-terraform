
variable "bu" {
  description = "Environment for which resource is getting deployed:Dev,QA,Prod"
  default     = "960683"
}

variable "division" {
  description = "Environment for which resource is getting deployed:Dev,QA,Prod"
  default     = "GGBRe"
}

variable "department" {
  description = "Environment for which resource is getting deployed:Dev,QA,Prod"
  default     = "GallagherRe"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}


