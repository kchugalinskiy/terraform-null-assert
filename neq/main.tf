resource "null_resource" "checker" {
  provisioner "local-exec" {
    command = "echo 'Condition failed. Unexpected: \"${var.unexpected}\" actual: \"${var.actual}\"' && exit 1"
  }

  count = "${var.unexpected == var.actual ? 1 : 0}"
}
