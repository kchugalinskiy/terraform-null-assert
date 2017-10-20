terraform {
  required_version = ">= 0.9.0"
}

resource "null_resource" "checker" {
  provisioner "local-exec" {
    command = "echo 'Condition failed. Actual: \"${var.actual}\" expected to be greater or equal than \"${var.expected}\"' && exit 1"
  }

  count = "${var.actual >= var.expected ? 0 : 1}"
}
