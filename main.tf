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
    command = "python3 -c 'a, b = 0, 1; [print(a) for _ in range(21) if (a := b, b := a + b) or True]'"
  }
}