# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
  type        = string
  description = "The common name used as a base for all created resources"
  default     = "elastic-ip-manager"
}

variable "s3_bucket" {
  type        = string
  description = "The S3 bucket containing the elastic-ip-manager function's deployment package. If ommited, the public bucket from binxio will be used."
  default     = null
}

variable "s3_key" {
  type        = string
  description = "The S3 key of a prebuilt deployment package. If omitted, the package is built from ./src by Terraform."
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all created resources"
  default     = {}
}
