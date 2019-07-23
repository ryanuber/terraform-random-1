
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 84
}

output "random" {
  value = "${random_id.random.hex}"
}
