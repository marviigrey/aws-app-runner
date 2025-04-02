variable ecr_name {
  type        = any
  default     = null
  description = "Name of ecr_registry"
}

variable "image_mutability" {
    description = "provide image immutability"
    type        = string
    default     = "IMMUTABLE"
}
variable "tags" {
    description = "the key-value maps for tagging"
    type        = map(string)
    default     = {}
}

variable "encrypt_type" {
  description = "Provide type of encryption here"
  type        = string
  default     = "KMS"
}