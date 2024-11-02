terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "fibonacci" {
  provisioner "local-exec" {
    command = "python3 fibonacci.py"
  }
}
