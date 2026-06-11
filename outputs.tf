output "internal_ip_addresses" {
  value = [
    for vm in yandex_compute_instance.vm : vm.network_interface[0].ip_address
  ]
}

output "external_ip_addresses" {
  value = [
    for vm in yandex_compute_instance.vm : vm.network_interface[0].nat_ip_address
  ]
}

output "load_balancer_ip" {
  value = yandex_lb_network_load_balancer.web_nlb.listener[*].external_address_spec[*].address
}