variable "project_name" {
  description = "Project name."
  default = "project"
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  default = "eu-west-1"
}

variable rds_allocated_storage {
  description = "Amount of storage to be initially allocated for the DB instance, in gigabytes."
  default = 5
}

variable rds_engine {
  description = "Name of the database engine to be used for this instance."
  default = "postgres"
}

variable rds_engine_version {
  description = "Version number of the database engine to use."
  default = "10.5"
}

variable rds_instance_class {
  description = "The compute and memory capacity of the instance"
  default = "db.t2.micro"
}

variable database_password {
  description = "Password for the master DB instance user"
  default = "$some_password!"
}

variable rds_storage_type {
  description = "Specifies the storage type for the DB instance."
  default = "gp2"
}

variable rds_multi_az {
  description = "Multi AZ."
  default = "true"
}

// ElastiCache
// http://docs.aws.amazon.com/cli/latest/reference/elasticache/create-cache-cluster.html

variable elasticache_cache_name {
  description = "Specifies the name of the cache instance."
  default = "blue_landscape"
}

variable elasticache_engine_version {
  description = "Specifies the engine version for the cache instance."
  default = "2.8.24"
}

variable elasticache_maintenance_window {
  description = "Specifies the maintenence window for the cache instance."
  default = "sun:05:00-sun:09:00"
}

variable elasticache_instance_type {
  description = "Specifies the instance type for the cache instance."
  default = "cache.t2.micro"
}