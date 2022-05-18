terraform {
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "= 3.2.1"
    }
  }
}

data "dns_txt_record_set" "hashicorp" {
  host = "www.google.com"
}

output "hashi_txt" {
  value = data.dns_txt_record_set.hashicorp.record
}
