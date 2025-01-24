# redis
variable "redis_url" {}

variable "redis_node_type" {
  default     = "cache.t3.micro"
  description = "The instance type to be used for the Redis cache node"
}

variable "redis_engine_version" {
  default     = "7.1"
  description = "The Redis engine version"
}

variable "redis_port" {
  default     = 6379
  description = "The port number on which the Redis instance will accept connections"
}

variable "redis_num_cache_clusters" {
  default     = 2 # minimum 2 due to automatic fail over
  description = "The number of cache clusters (nodes) to be created in the ElastiCache replication group"
}


variable "redis_snapshot_retention_limit" {
  default     = 1
  description = "The number of days to retain automatic snapshots"
}
