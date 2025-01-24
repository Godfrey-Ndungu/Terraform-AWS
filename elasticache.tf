resource "aws_elasticache_replication_group" "redis" {
  replication_group_id          = "${var.project_name}-${var.environment}-redis"
  description                   = "Redis for rails google sheet etl"
  node_type                     = var.redis_node_type
  num_cache_clusters            = var.redis_num_cache_clusters 
  parameter_group_name          = aws_elasticache_parameter_group.redis7_parameter_group.name
  port                          = var.redis_port
  engine                        = "redis"
  engine_version                = var.redis_engine_version
  automatic_failover_enabled    = true
  subnet_group_name             = aws_elasticache_subnet_group.redis.name
  security_group_ids            = [aws_security_group.redis.id]
  snapshot_retention_limit      = var.redis_snapshot_retention_limit
  apply_immediately             = true
  snapshot_window               = "05:00-09:00"


  tags = {
    Name        = "${var.project_name}-${var.environment}-redis"
    Project     = var.project_name
    Environment = var.environment
  }

}
