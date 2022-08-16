variable "label" {
  type        = string
  description = "The base name for the stack"
}

variable "region" {
  default     = "us-east"
  description = "(Required) This is the location where the Linode is deployed. Examples are ＂us-east＂, ＂us-west＂, ＂ap-south＂, etc. See all regions here. Changing region forces the creation of a new Linode Instance"
}

# Instance Settings
variable "instance_image" {
  default     = "linode/alpine3.16"
  type        = string
  description = "Options avaible by running `linode-cli images list`"
}

variable "tags" {
  default = []
  type    = list(any)
}

variable "instance_type" {
  type    = string
  default = "g6-standard-1"
}

variable "instance_private_ip" {
  type    = bool
  default = true
}

variable "group" {
  default = ""
  type    = string
}

variable "swap_space" {
  default = 256
  type    = number
}

variable "stackscript_data" {
  description = "Map of required StackScript UDF data."
  type        = map(any)
  default     = {}
}

variable "stackscript_extend" {
  description = "appeded to the base stack script that provides mysql access."
  default     = ""
}

variable "authorized_keys" {
  default = []
  type    = list(any)
}
variable "instance_count" {
  default     = 1
  type        = number
  description = "number of instances. if more than 1 ins selected a Node ballancer will be created and traffic served through it."
}

#db settings

variable "db_engine_id" {
  default     = "mysql/8.0.26"
  type        = string
  description = "Options avaible by running `linode-cli databases engines`"
}

variable "db_type" {
  default     = "g6-nanode-1"
  type        = string
  description = "Options avaible by running `linode-cli databases types`"
}

variable "db_cluster_size" {
  default     = 1
  type        = number
  description = "number of instance to run in the db cluster"
}

variable "db_replication_type" {
  default     = "none"
  description = "(Optional) The replication method used for the Managed Database. (none, asynch, semi_synch; default none)"
  type        = string
}

variable "db_encrytion" {
  default = true
  type    = bool
}

variable "db_ssl" {
  default = true
  type    = bool
}

variable "db_name" {
  default     = ""
  type        = string
  description = "default database name to use. Will use Label variable if not set"
}

# LB settings
variable "lb_client_conn_throttle" {
  default     = 0
  type        = number
  description = "value for Nodebalanacer client_conn_throttle"
}
