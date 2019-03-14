output "network_name" {
  value = "${module.vpc.network_name}"
}

output "first_subnet_name" {
  value = "${module.vpc.subnets_names[0]}"
}

output "my_subnet_name" {
  value = "${module.vpc.subnets_names[2]}"
}
