output "vpc_id-output" {
    value = aws_vpc.main.id
}
output "az-output" {
    value = data.aws_availability_zones.available.names
}
output "az1-output" {
    value = local.project_az
}
output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}
output "private_subnet_ids" {
    value = aws_subnet.private[*].id
}
output "database_subnet_ids" {
    value = aws_subnet.database[*].id
}