variable "ecr_name" {
  type        = list(string)
  default     = null
  description = "name of ecr repo to create"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "key value maps for tagging"
}

variable "image_mutability" {
  type        = string
  default     = "MUTABLE"
  description = "provide image immutability"
}

variable "encrypt_type" {
  type        = string
  default     = "KMS"
  description = "provide type of encryption"
}


variable service_name {
  type        = string
  default     = ""
  description = "name of apprunner service"
}

variable image_URL {
  type        = string
  default     = ""
  description = "ECR image URL"
}