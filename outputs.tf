output "redis_endpoint" {
  value = aws_elasticache_replication_group.redis.primary_endpoint_address
  description = "The endpoint address for the Redis cluster"
}

output "redis_port" {
  value = aws_elasticache_replication_group.redis.port
  description = "The port for the Redis cluster"
}
