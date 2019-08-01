data "external" "slow-data-source" {
  program = ["curl", "https://staging-app.terraform.io/.well-known/terraform.json"]
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
