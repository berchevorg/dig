data "dns_txt_record_set" "hashicorp" {
  host = "www.google.com"
}

output "hashi_txt" {
  value = data.dns_txt_record_set.hashicorp.record
}
