variable "db_identifier" {
    description = "provide db2024 identifier"
    type = string
    default = "deprotech2024"
}
variable "engine_type" {
    description = "provide engine type"
    type = string
    default = "postgres"
}
variable "instance_class" {
    description = "provide db intsance class"
    type = string
    default = "db.t2.micro"
}
variable "db_username" {
    description = "provide username for db instance"
    type = string
    default = "wimax"
}
variable "db_password" {
    description = "provide password for db instance"
    type = string
    default = "wimaxbuea99"
}
variable "allocated_storage" {
    description = "provide storage for db instance"
    type = string
    default = 20
}
variable "engine_version" {
    description = "provide version for db instance"
    type = string
    default = 12
}
variable "port" {
    description = "provide port for db instance"
    type = string
    default = 5432
}
