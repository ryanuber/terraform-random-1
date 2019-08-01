data "external" "slow-data-source-external" {
  program = ["curl", "-m", "5", "-v", "https://jsonip.com"]
}
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random.hex}"
}
